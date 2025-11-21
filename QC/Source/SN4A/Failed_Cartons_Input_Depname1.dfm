object Failed_Cartons_Input_Depname: TFailed_Cartons_Input_Depname
  Left = 621
  Top = 273
  Width = 544
  Height = 558
  Caption = 'Failed_Cartons_Input_Depname'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 63
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 11
      Width = 59
      Height = 35
      Caption = 'LINE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -27
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtLine: TEdit
      Left = 81
      Top = 7
      Width = 271
      Height = 42
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnlQuery: TPanel
      Left = 360
      Top = 9
      Width = 73
      Height = 35
      Caption = 'Query'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = pnlQueryClick
    end
  end
  object gdDepRyList: TDBGrid
    Left = 0
    Top = 63
    Width = 528
    Height = 456
    Align = alClient
    Color = clGradientInactiveCaption
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gdDepRyListDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Title.Color = clAqua
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -27
        Title.Font.Name = #24494#36575#27491#40657#39636
        Title.Font.Style = []
        Width = 443
        Visible = True
      end>
  end
  object qry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct ID, DepName, GXLB from BDepartment Where 1 = 2')
    Left = 166
    Top = 175
    object qryID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object qryDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object qryGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.BDepartment.GXLB'
      FixedChar = True
      Size = 10
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 165
    Top = 208
  end
end
