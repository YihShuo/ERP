object DepChange: TDepChange
  Left = 263
  Top = 124
  Width = 907
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'Department Change'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 466
    Align = alLeft
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 375
      Height = 64
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
        Top = 24
        Width = 89
        Height = 20
        Caption = 'Source Dep:'
      end
      object CBX1: TComboBox
        Left = 128
        Top = 16
        Width = 145
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        TabOrder = 0
        OnCloseUp = CBX1CloseUp
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 65
      Width = 375
      Height = 400
      Align = alClient
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DepName'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkName'
          Width = 129
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 377
    Top = 0
    Width = 120
    Height = 466
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 118
      Height = 80
      Align = alTop
      TabOrder = 0
    end
    object Button1: TButton
      Left = 16
      Top = 120
      Width = 89
      Height = 33
      Caption = 'Modify'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 210
      Width = 89
      Height = 33
      Caption = '>>>>'
      Enabled = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 16
      Top = 392
      Width = 89
      Height = 33
      Caption = 'Cancel'
      Enabled = False
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 16
      Top = 301
      Width = 89
      Height = 33
      Caption = 'Save'
      Enabled = False
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 497
    Top = 0
    Width = 402
    Height = 466
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 400
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 94
        Height = 20
        Caption = 'Change Dep:'
      end
      object CBX2: TComboBox
        Left = 128
        Top = 16
        Width = 145
        Height = 28
        Style = csDropDownList
        ItemHeight = 20
        TabOrder = 0
        OnCloseUp = CBX2CloseUp
      end
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 65
      Width = 368
      Height = 400
      Align = alLeft
      DataSource = DS2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DepName'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkName'
          Width = 127
          Visible = True
        end>
    end
  end
  object SQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select w.*,d.DepName'
      'from BWorker w,BDepartment d'
      'where w.DepId=d.ID '
      'order by W.DepID,w.ID')
    UpdateObject = UpSQL1
    Left = 168
    Top = 144
  end
  object LQ: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 552
    Top = 152
  end
  object DS1: TDataSource
    DataSet = SQ
    Left = 208
    Top = 144
  end
  object DS2: TDataSource
    DataSet = LQ
    Left = 600
    Top = 152
  end
  object Dep: TQuery
    DatabaseName = 'DB'
    Left = 360
    Top = 24
  end
  object UpSQL1: TUpdateSQL
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
      '  (DepID, UserID, UserDate)'
      'values'
      '  (:DepID, :UserID, :UserDate)')
    DeleteSQL.Strings = (
      'delete from BWorker'
      'where'
      '  ID = :OLD_ID')
    Left = 120
    Top = 144
  end
  object UpdateSQL1: TUpdateSQL
    Left = 553
    Top = 184
  end
end
