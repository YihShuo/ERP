object barcodeprint: Tbarcodeprint
  Left = 225
  Top = 210
  Width = 806
  Height = 342
  Caption = 'Barcode Print'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 11
      Width = 37
      Height = 20
      Caption = 'SIZE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 135
      Top = 10
      Width = 18
      Height = 20
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cb1: TComboBox
      Left = 64
      Top = 9
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = cb1Change
    end
    object cb2: TComboBox
      Left = 160
      Top = 9
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 410
      Top = 6
      Width = 75
      Height = 28
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object CKB1: TCheckBox
      Left = 240
      Top = 12
      Width = 73
      Height = 17
      Caption = 'Residue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object QueryBtn: TButton
      Left = 328
      Top = 6
      Width = 75
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = QueryBtnClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 790
    Height = 263
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SIZE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'EnglishName'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 139
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'codebar'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 125
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'NBarCode'
        Footers = <>
        Title.Caption = 'CTS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Package'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end>
  end
  object SizeQry: TQuery
    DatabaseName = 'DB'
    DataSource = ProductionPlan.WP
    Left = 135
    Top = 177
  end
  object Query: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = ProductionPlan.WP
    RequestLive = True
    SQL.Strings = (
      
        'select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.eng' +
        'lishname,colorclass.ChinaNmae from LIY_DD.dbo.workplans workplan' +
        's '
      
        'left join LIY_DD.dbo.workplan  workplan on workplan.WorkID=workp' +
        'lans.WorkID'
      
        'left join LIY_DD.dbo.colorclass colorclass on workplan.ColorNo=c' +
        'olorclass.ColorNo '
      'where workplans.workid='#39'202006006'#39
      '-- and workplans.SNO=1 '
      ' and workplans.size >='#39'01.0'#39
      ' and workplans.size <='#39'06.0'#39)
    UpdateObject = upwps
    Left = 96
    Top = 176
    object QueryWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object QueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object QuerySNO: TIntegerField
      FieldName = 'SNO'
    end
    object QueryMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object QueryColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object QuerySize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QueryPackage: TIntegerField
      FieldName = 'Package'
    end
    object QueryQty: TIntegerField
      FieldName = 'Qty'
    end
    object QueryNBarCode: TIntegerField
      FieldName = 'NBarCode'
    end
    object QueryPbarcode: TIntegerField
      FieldName = 'Pbarcode'
    end
    object QueryEnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
    object QueryChinaNmae: TStringField
      FieldName = 'ChinaNmae'
      FixedChar = True
      Size = 50
    end
    object Querycodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
    object QueryOKQTY: TIntegerField
      FieldName = 'OKQTY'
    end
    object QueryUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object QueryCreatDate: TDateTimeField
      FieldName = 'CreatDate'
    end
    object QueryUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object QueryLastUser: TStringField
      FieldName = 'LastUser'
      FixedChar = True
    end
    object QueryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query
    Left = 96
    Top = 144
  end
  object upwps: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.workplans'
      'set'
      '  Pbarcode = :Pbarcode'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  DDBH =:OLD_DDBH and'
      '  Sno = :OLD_Sno and'
      '  Size = :OLD_Size')
    InsertSQL.Strings = (
      'insert into LIY_DD.dbo.workplans'
      
        '  (WorkID, DDBH, SNO, Size, Package, Qty, OKQTY, NBarCode, Pbarc' +
        'ode, UserID,'
      '   CreatDate, UpdateDate, LastUser, codebar, YN)'
      'values'
      
        '  (:WorkID, :DDBH, :SNO, :Size, :Package, :Qty, :OKQTY, :NBarCod' +
        'e, :Pbarcode,'
      '   :UserID, :CreatDate, :UpdateDate, :LastUser, :codebar, :YN)')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.workplans'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  DDBH =:OLD_DDBH and'
      '  Sno = :OLD_Sno and'
      '  Size = :OLD_Size')
    Left = 96
    Top = 207
  end
end
