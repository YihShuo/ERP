object UPQuotation: TUPQuotation
  Left = 177
  Top = 172
  Width = 1055
  Height = 493
  Caption = 'N432 UP Quotation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 65
    Width = 1039
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 5
      Width = 32
      Height = 21
      Caption = 'Year'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 34
      Width = 52
      Height = 21
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 221
      Top = 5
      Width = 51
      Height = 21
      Caption = 'Sup. ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 194
      Top = 34
      Width = 77
      Height = 21
      Caption = 'Sup. Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 408
      Top = 5
      Width = 85
      Height = 21
      Caption = 'Style Group'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 5
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 64
      Top = 34
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 276
      Top = 5
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 276
      Top = 34
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 497
      Top = 5
      Width = 120
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'Material'
        'Chemical'
        'Treatment'
        'Machinery Parts'
        'Tool')
    end
    object Button1: TButton
      Left = 632
      Top = 5
      Width = 160
      Height = 56
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tw Cen MT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 799
      Top = 5
      Width = 160
      Height = 56
      Caption = 'Style'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tw Cen MT'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 1039
    Height = 387
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1037
      Height = 385
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
      TitleFont.Height = -15
      TitleFont.Name = 'Candara'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          Color = 14286847
          DisplayFormat = 'yyyy/mm/dd'
          EditButtons = <>
          FieldName = 'EffectiveDate'
          Footer.Color = 14286847
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Effective Date'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 100
          OnUpdateData = DBGridEh1Columns0UpdateData
        end
        item
          EditButtons = <>
          FieldName = 'Season'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 60
        end
        item
          Color = 14286847
          EditButtons = <>
          FieldName = 'ZSDH'
          Footer.Color = 14286847
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Title.Color = 8454143
          Title.TitleButton = True
          Width = 60
          OnEditButtonClick = DBGridEh1Columns2EditButtonClick
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Title.TitleButton = True
          Width = 140
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
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Group'
          Title.TitleButton = True
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'Style'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.TitleButton = True
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'Remark'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 160
        end
        item
          Color = 15925222
          EditButtons = <>
          FieldName = 'FileDesc'
          Footer.Color = 15925222
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'File Name'
          Title.Color = 14286771
          Title.TitleButton = True
          Width = 300
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
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'YN'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Visible = False
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'FileStorage'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -19
          Footer.Font.Name = 'Calibri'
          Footer.Font.Style = [fsBold]
          Footers = <>
          Title.Alignment = taCenter
          Title.TitleButton = True
          Visible = False
          Width = 60
        end>
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT duq.EffectiveDate, duq.ZSDH, duq.Season, duq.Remark, duq.' +
        'FileDesc, duq.UserID, duq.UserDate, duq.YN, duq.Quotation_Serial' +
        ','
      'dusg.Style, dusg.SGroup,'
      'z.zsywjc'
      '  FROM Data_UP_Quotation duq'
      '  LEFT JOIN ZSZL Z ON z.zsdh = duq.ZSDH'
      '  LEFT JOIN Data_UP_Style_Group dusg ON dusg.Style = z.Style'
      'where 1 = 2')
    UpdateObject = UpdateSQL1
    Left = 112
    Top = 147
    object Query1EffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 6
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object Query1SGroup: TStringField
      FieldName = 'SGroup'
      FixedChar = True
      Size = 30
    end
    object Query1Style: TStringField
      FieldName = 'Style'
      FixedChar = True
      Size = 40
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 240
    end
    object Query1FileDesc: TStringField
      FieldName = 'FileDesc'
      FixedChar = True
      Size = 240
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 30
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1Quotation_Serial: TStringField
      FieldName = 'Quotation_Serial'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 179
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Data_UP_Quotation'
      'set'
      '  EffectiveDate = :EffectiveDate,'
      '  ZSDH = :ZSDH,'
      '  Season = :Season,'
      '  Remark = :Remark,'
      '  FileDesc = :FileDesc,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate,'
      '  YN = :YN,'
      '  Quotation_Serial = :Quotation_Serial'
      'where'
      '  Quotation_Serial = :OLD_Quotation_Serial')
    InsertSQL.Strings = (
      'insert into Data_UP_Quotation'
      
        '  (EffectiveDate, ZSDH, Season, Remark, FileDesc, UserID, UserDa' +
        'te, YN, '
      '   Quotation_Serial)'
      'values'
      
        '  (:EffectiveDate, :ZSDH, :Season, :Remark, :FileDesc, :UserID, ' +
        ':UserDate, '
      '   :YN, :Quotation_Serial)')
    DeleteSQL.Strings = (
      'delete from Data_UP_Quotation'
      'where'
      '  Quotation_Serial = :OLD_Quotation_Serial')
    Left = 112
    Top = 211
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 243
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UploadFile1: TMenuItem
      Caption = 'Upload File'
      OnClick = UploadFile1Click
    end
    object DownloadFile1: TMenuItem
      Caption = 'Download File'
      OnClick = DownloadFile1Click
    end
    object DeleteFile1: TMenuItem
      Caption = 'Delete File'
      OnClick = DeleteFile1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qry_tmp: TQuery
    DatabaseName = 'DB'
    Left = 144
    Top = 147
  end
  object OpenDialog1: TOpenDialog
    Left = 192
    Top = 147
  end
  object SaveDialog1: TSaveDialog
    Left = 192
    Top = 179
  end
end
