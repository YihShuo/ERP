object BworkerIm: TBworkerIm
  Left = 291
  Top = 186
  Width = 795
  Height = 498
  BorderIcons = [biSystemMenu]
  Caption = 'BworkerIm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 464
    Align = alClient
    BorderWidth = 8
    Color = clTeal
    TabOrder = 0
    object Panel3: TPanel
      Left = 329
      Top = 9
      Width = 128
      Height = 446
      Align = alLeft
      Color = clTeal
      TabOrder = 0
      object Bevel1: TBevel
        Left = 8
        Top = 96
        Width = 113
        Height = 297
        Style = bsRaised
      end
      object Label3: TLabel
        Left = 32
        Top = 40
        Width = 70
        Height = 20
        Caption = 'MODIFY'
        Color = 15461355
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BB1: TButton
        Left = 24
        Top = 192
        Width = 81
        Height = 25
        Caption = 'Add One >'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BB1Click
      end
      object BB2: TButton
        Left = 24
        Top = 280
        Width = 81
        Height = 25
        Caption = '< Remove'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BB2Click
      end
    end
    object Panel1: TPanel
      Left = 9
      Top = 9
      Width = 320
      Height = 446
      Align = alLeft
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 62
        Width = 318
        Height = 383
        Align = alBottom
        DataSource = DS1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WorkName'
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DepName'
            Width = 38
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 318
        Height = 56
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 66
          Height = 16
          Caption = 'DepName:'
        end
        object CBX1: TComboBox
          Left = 88
          Top = 16
          Width = 129
          Height = 24
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 16
          TabOrder = 0
          OnCloseUp = CBX1CloseUp
        end
      end
    end
    object Panel4: TPanel
      Left = 457
      Top = 9
      Width = 321
      Height = 446
      Align = alClient
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 1
        Top = 59
        Width = 319
        Height = 386
        Align = alBottom
        DataSource = DS2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WorkName'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DepName'
            Width = 39
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 319
        Height = 56
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 66
          Height = 16
          Caption = 'DepName:'
        end
        object CBX2: TComboBox
          Left = 88
          Top = 16
          Width = 129
          Height = 24
          Style = csDropDownList
          DropDownCount = 10
          ItemHeight = 16
          TabOrder = 0
          OnCloseUp = CBX2CloseUp
        end
      end
    end
  end
  object Query1: TQuery
    CachedUpdates = True
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select BWorker.* ,BDepartment.DepName'
      'from BWorker '
      'left join BDepartment on BDepartment.ID=BWorker.DepID '
      'where BDepartment.DepName='#39'C'#39
      'order by BWorker.ID ')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 193
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BWorker.ID'
      FixedChar = True
      Size = 10
    end
    object Query1WorkName: TStringField
      FieldName = 'WorkName'
      Origin = 'DB.BWorker.WorkName'
      FixedChar = True
      Size = 30
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.BWorker.DepID'
      FixedChar = True
      Size = 10
    end
    object Query1Certificate: TStringField
      FieldName = 'Certificate'
      Origin = 'DB.BWorker.Certificate'
      FixedChar = True
      Size = 15
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.BWorker.UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.BWorker.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BWorker.YN'
      FixedChar = True
      Size = 1
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 193
  end
  object Query2: TQuery
    CachedUpdates = True
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select BWorker.* ,BDepartment.DepName'
      'from BWorker '
      'left join BDepartment on BDepartment.ID=BWorker.DepID '
      'where BDepartment.DepName='#39'C'#39
      'order by BWorker.ID ')
    UpdateObject = UpdateSQL2
    Left = 512
    Top = 185
    object Query2ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BWorker.ID'
      FixedChar = True
      Size = 10
    end
    object Query2WorkName: TStringField
      FieldName = 'WorkName'
      Origin = 'DB.BWorker.WorkName'
      FixedChar = True
      Size = 30
    end
    object Query2DepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.BWorker.DepID'
      FixedChar = True
      Size = 10
    end
    object Query2Certificate: TStringField
      FieldName = 'Certificate'
      Origin = 'DB.BWorker.Certificate'
      FixedChar = True
      Size = 15
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.BWorker.UserID'
      FixedChar = True
      Size = 10
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.BWorker.UserDate'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BWorker.YN'
      FixedChar = True
      Size = 1
    end
    object Query2DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 544
    Top = 185
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update BWorker'
      'set'
      '  DepID = :DepID,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into BWorker'
      '  (ID, DepID, WorkName, Certificate, UserID, UserDate, YN)'
      'values'
      
        '  (:ID, :DepID, :WorkName, :Certificate, :UserID, :UserDate, :YN' +
        ')')
    DeleteSQL.Strings = (
      'delete from BWorker'
      'where'
      '  ID = :OLD_ID')
    Left = 512
    Top = 225
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update BWorker'
      'set'
      '  DepID = :DepID,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into BWorker'
      '  (ID, DepID, WorkName, Certificate, UserID, UserDate, YN)'
      'values'
      
        '  (:ID, :DepID, :WorkName, :Certificate, :UserID, :UserDate, :YN' +
        ')')
    DeleteSQL.Strings = (
      'delete from BWorker'
      'where'
      '  ID = :OLD_ID')
    Left = 120
    Top = 233
  end
  object QDepName: TQuery
    DatabaseName = 'DB'
    Left = 266
    Top = 34
  end
end
