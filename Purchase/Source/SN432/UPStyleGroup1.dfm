object UPStyleGroup: TUPStyleGroup
  Left = 292
  Top = 204
  Width = 732
  Height = 493
  Caption = 'UP Style Group'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 37
    Width = 716
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 37
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 240
      Top = 5
      Width = 51
      Height = 23
      Caption = 'Group'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 5
      Width = 40
      Height = 23
      Caption = 'Style'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 296
      Top = 5
      Width = 160
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'Material'
        'Chemical'
        'Treatment'
        'Machinery Parts'
        'Tool')
    end
    object Edit1: TEdit
      Left = 62
      Top = 5
      Width = 160
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 472
      Top = 5
      Width = 225
      Height = 27
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 716
    Height = 415
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 714
      Height = 413
      Align = alClient
      DataSource = DataSource1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'Style'
          Footer.Color = 14286847
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Color = 8454143
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 200
          OnEditButtonClick = DBGridEh1Columns1EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'SGroup'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          PickList.Strings = (
            'Material'
            'Chemical'
            'Treatment'
            'Machinery Parts'
            'Tool')
          Title.Alignment = taCenter
          Title.Caption = 'Group'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'Department'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          PickList.Strings = (
            'Assemble'
            'Packing'
            'Upper')
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15724527
          EditButtons = <>
          FieldName = 'UserID'
          Footer.Color = 15724527
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'User ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 100
        end
        item
          Color = 15724527
          DisplayFormat = 'yyyy/mm/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'UserDate'
          Footer.Color = 15724527
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'User Date'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 180
        end
        item
          EditButtons = <>
          FieldName = 'YN'
          Footer.Color = 15724527
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Candara'
          Title.Font.Style = []
          Title.TitleButton = True
          Visible = False
          Width = 52
        end>
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT dusg.Style, dusg.SGroup, dusg.Department, dusg.UserID, du' +
        'sg.UserDate, dusg.YN'
      'FROM Data_UP_Style_Group dusg'
      'Where 1=2')
    UpdateObject = UpdateSQL1
    Left = 80
    Top = 107
    object Query1Style: TStringField
      FieldName = 'Style'
      Origin = 'DB.Data_UP_Style_Group.Style'
      FixedChar = True
      Size = 40
    end
    object Query1SGroup: TStringField
      FieldName = 'SGroup'
      Origin = 'DB.Data_UP_Style_Group.SGroup'
      FixedChar = True
      Size = 30
    end
    object Query1Department: TStringField
      FieldName = 'Department'
      Origin = 'DB.Data_UP_Style_Group.Department'
      FixedChar = True
      Size = 30
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.Data_UP_Style_Group.UserID'
      FixedChar = True
      Size = 30
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.Data_UP_Style_Group.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.Data_UP_Style_Group.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 139
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Data_UP_Style_Group'
      'set'
      '  Style = :Style,'
      '  SGroup = :SGroup,'
      '  Department = :Department,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate,'
      '  YN = :YN'
      'where'
      '  Style = :OLD_Style')
    InsertSQL.Strings = (
      'insert into Data_UP_Style_Group'
      '  (Style, SGroup, Department, UserID, UserDate, YN)'
      'values'
      '  (:Style, :SGroup, :Department, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'delete from Data_UP_Style_Group'
      'where'
      '  Style = :OLD_Style')
    Left = 80
    Top = 171
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 205
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
