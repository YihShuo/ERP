object QC_MatDefect: TQC_MatDefect
  Left = 446
  Top = 156
  Width = 323
  Height = 597
  BorderIcons = [biSystemMenu]
  Caption = 'QC_MatDefect'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 307
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 32
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Defect Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 135
      Top = 7
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 87
      Top = 3
      Width = 46
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 238
      Top = 15
      Width = 54
      Height = 33
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
    object edt2: TEdit
      Left = 86
      Top = 29
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cboType: TComboBox
      Left = 168
      Top = 2
      Width = 55
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        ''
        'A'
        'C'
        'M')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 307
    Height = 501
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
    FooterFont.Height = -10
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 5
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CodeID'
        Footer.FieldName = 'CodeID'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Code'
        Title.TitleButton = True
        Width = 41
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Types'
        Footers = <>
        PickList.Strings = (
          ''
          'A'
          'C'
          'M')
        Title.Caption = 'Type'
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DefectName'
        Footers = <>
        Title.Caption = 'Defect Description'
        Title.TitleButton = True
        Width = 164
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Visible = False
        Width = 121
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 49
      end>
  end
  object qry1: TQuery
    CachedUpdates = True
    AfterOpen = qry1AfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from QC_MatDefect where 1=2')
    UpdateObject = Upd1
    Left = 128
    Top = 136
    object qry1CodeID: TStringField
      FieldName = 'CodeID'
      Origin = 'DB.Qc_MatDefect.CodeID'
      FixedChar = True
      Size = 10
    end
    object qry1Types: TStringField
      FieldName = 'Types'
      Origin = 'DB.Qc_MatDefect.Types'
      FixedChar = True
      Size = 1
    end
    object qry1DefectName: TStringField
      FieldName = 'DefectName'
      Origin = 'DB.Qc_MatDefect.DefectName'
      FixedChar = True
      Size = 50
    end
    object qry1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.Qc_MatDefect.YN'
      FixedChar = True
      Size = 1
    end
    object qry1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.Qc_MatDefect.UserID'
      FixedChar = True
      Size = 50
    end
    object qry1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.Qc_MatDefect.UserDate'
    end
    object qry1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.QC_MatDefect.GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 128
    Top = 168
  end
  object Upd1: TUpdateSQL
    ModifySQL.Strings = (
      
        'update QC_MatDefect set DefectName=:DefectName,UserID=:UserID,Us' +
        'erdate=getdate()'
      'where CodeID=:CodeID')
    InsertSQL.Strings = (
      
        'INSERT INTO QC_MatDefect (CodeID,GSBH,Types,DefectName,UserID,Us' +
        'erDate,YN)'
      
        '     VALUES (:CodeID,:GSBH,:Types,:DefectName,:UserID,getdate(),' +
        ':YN)')
    DeleteSQL.Strings = (
      'delete from QC_MatDefect '
      'where CodeID=:old_CodeID')
    Left = 128
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 232
    object Insert1: TMenuItem
      Caption = 'Insert'
      Enabled = False
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object qry_temp: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 152
  end
end
