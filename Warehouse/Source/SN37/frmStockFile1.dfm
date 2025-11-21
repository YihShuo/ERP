object frmStockFile: TfrmStockFile
  Left = 550
  Top = 153
  Width = 1178
  Height = 480
  Caption = 'Stock File'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 241
    Top = 49
    Height = 392
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1162
    Height = 49
    Align = alTop
    TabOrder = 0
    object lblYear: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 19
      Caption = 'Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblMonth: TLabel
      Left = 112
      Top = 16
      Width = 44
      Height = 19
      Caption = 'Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object DB_KCCLMONTHAC: TDBGridEh
    Left = 0
    Top = 49
    Width = 241
    Height = 392
    Align = alLeft
    DataSource = DS_KCCLMONTHAC
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Width = 50
      end>
  end
  object DB_KCCLMONTH_File: TDBGridEh
    Left = 244
    Top = 49
    Width = 918
    Height = 392
    Align = alClient
    DataSource = DS_KCCLMONTH_File
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    PopupMenu = Pop_KCCLMONTH_File
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DB_KCCLMONTH_FileDblClick
    OnGetCellParams = DB_KCCLMONTH_FileGetCellParams
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'ProcContent'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 200
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'FileName'
        Footers = <>
        ReadOnly = True
        Width = 200
        OnEditButtonClick = DB_KCCLMONTH_FileColumns3EditButtonClick
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Width = 70
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Width = 80
      end>
  end
  object Qry_KCCLMONTHAC: TQuery
    AfterOpen = Qry_KCCLMONTHACAfterOpen
    BeforeClose = Qry_KCCLMONTHACBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT kac.KCYEAR, kac.KCMONTH, kac.CKBH, mi.HGLB'
      'FROM KCCLMONTHAC kac CROSS JOIN Method_Import mi'
      'WHERE 1=2')
    Left = 56
    Top = 176
    object Qry_KCCLMONTHACKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Qry_KCCLMONTHACKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Qry_KCCLMONTHACCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Qry_KCCLMONTHACHGLB: TStringField
      FieldName = 'HGLB'
      Size = 4
    end
  end
  object DS_KCCLMONTHAC: TDataSource
    DataSet = Qry_KCCLMONTHAC
    Left = 56
    Top = 144
  end
  object DS_KCCLMONTH_File: TDataSource
    DataSet = Qry_KCCLMONTH_File
    Left = 88
    Top = 144
  end
  object Qry_KCCLMONTH_File: TQuery
    DatabaseName = 'DB'
    DataSource = DS_KCCLMONTHAC
    SQL.Strings = (
      
        'SELECT KCYear,KCMonth,CKBH,HGLB,ID,[FileName],ProcContent,Remark' +
        ',UserID,UserDate,YN'
      'FROM KCCLMONTH_File'
      
        'WHERE KCYear=:KCYear AND KCMonth=:KCMonth AND CKBH=:CKBH and HGL' +
        'B=:HGLB')
    UpdateObject = Up_KCCLMONTH_File
    Left = 88
    Top = 176
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'KCYEAR'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'KCMONTH'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftUnknown
        Name = 'HGLB'
        ParamType = ptUnknown
      end>
    object Qry_KCCLMONTH_FileKCYear: TStringField
      FieldName = 'KCYear'
      FixedChar = True
      Size = 4
    end
    object Qry_KCCLMONTH_FileKCMonth: TStringField
      FieldName = 'KCMonth'
      FixedChar = True
      Size = 2
    end
    object Qry_KCCLMONTH_FileCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Qry_KCCLMONTH_FileHGLB: TStringField
      FieldName = 'HGLB'
      Size = 4
    end
    object Qry_KCCLMONTH_FileID: TIntegerField
      FieldName = 'ID'
    end
    object Qry_KCCLMONTH_FileFileName: TStringField
      FieldName = 'FileName'
      FixedChar = True
      Size = 150
    end
    object Qry_KCCLMONTH_FileProcContent: TStringField
      FieldName = 'ProcContent'
      FixedChar = True
      Size = 255
    end
    object Qry_KCCLMONTH_FileRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 255
    end
    object Qry_KCCLMONTH_FileUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 11
    end
    object Qry_KCCLMONTH_FileUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Qry_KCCLMONTH_FileYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object Up_KCCLMONTH_File: TUpdateSQL
    ModifySQL.Strings = (
      'update KCCLMONTH_File'
      'set'
      '  KCYear = :KCYear,'
      '  KCMonth = :KCMonth,'
      '  CKBH = :CKBH,'
      '  HGLB = :HGLB,'
      '  ID = :ID,'
      '  FileName = :FileName,'
      '  ProcContent = :ProcContent,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE()'
      'where'
      '  KCYear = :OLD_KCYear and'
      '  KCMonth = :OLD_KCMonth and'
      '  CKBH = :OLD_CKBH and'
      '  HGLB = :OLD_HGLB and'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into KCCLMONTH_File'
      
        '  (KCYear, KCMonth, CKBH, HGLB, ID, FileName, ProcContent, Remar' +
        'k, UserID,'
      '   UserDate, YN)'
      'values'
      
        '  (:KCYear, :KCMonth, :CKBH,:HGLB, :ID, :FileName, :ProcContent,' +
        ' :Remark, '
      '   :UserID, GETDATE(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'delete from KCCLMONTH_File'
      'where'
      '  KCYear = :OLD_KCYear and'
      '  KCMonth = :OLD_KCMonth and'
      '  CKBH = :OLD_CKBH and'
      '  HGLB = :OLD_HGLB and'
      '  ID = :OLD_ID')
    Left = 88
    Top = 208
  end
  object Pop_KCCLMONTH_File: TPopupMenu
    OnPopup = Pop_KCCLMONTH_FilePopup
    Left = 88
    Top = 240
    object mniIns_File: TMenuItem
      Caption = 'Insert'
      OnClick = mniIns_FileClick
    end
    object mniMod_File: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_FileClick
    end
    object mniDel_File: TMenuItem
      Caption = 'Delete'
      OnClick = mniDel_FileClick
    end
    object mniSav_File: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = mniSav_FileClick
    end
    object mniCan_File: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = mniCan_FileClick
    end
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 24
    Top = 176
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All Files(*.*)|*.*|CSV(comma split)(*.csv)|*.csv|Web Page(*.htm)' +
      '|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt|PDF Files(' +
      '*.pdf)|*.pdf|Excel File(*.xls)|*.xls'
    Left = 127
    Top = 210
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt|PDF F' +
      'iles(*.pdf)|*.pdf|All Files(*.*)|*.*'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 127
    Top = 175
  end
end
