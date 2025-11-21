object ScanIn: TScanIn
  Left = 291
  Top = 194
  Width = 913
  Height = 480
  Caption = 'ScanIn'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CLassCB: TComboBox
      Left = 88
      Top = 32
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Morning'
        'Noon'
        'Night')
    end
    object Edit1: TEdit
      Left = 200
      Top = 16
      Width = 353
      Height = 49
      AutoSize = False
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Nina'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 584
      Top = 48
      Width = 75
      Height = 25
      Caption = 'StorageIn'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 897
    Height = 353
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'WorkID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mjbh'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'englishname'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Size'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OKQTY'
        Title.Caption = 'OldIn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'new'
        Title.Caption = 'ScanIn'
        Visible = True
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'db'
    RequestLive = True
    SQL.Strings = (
      
        'select workplans.*,isnull(workscan.qty,0) as new,colorclass.engl' +
        'ishname from workplans'
      'left join workscan on workscan.codebar=workplans.codebar'
      'left join colorclass on colorclass.colorno=workplans.colorno'
      'where workscan.class='#39#39)
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object Query1WorkID: TStringField
      FieldName = 'WorkID'
      Origin = 'DB.workplans.WorkID'
      FixedChar = True
      Size = 12
    end
    object Query1Sno: TIntegerField
      FieldName = 'Sno'
      Origin = 'DB.workplans.Sno'
    end
    object Query1Mjbh: TStringField
      FieldName = 'Mjbh'
      Origin = 'DB.workplans.Mjbh'
      FixedChar = True
    end
    object Query1englishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 50
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      Origin = 'DB.workplans.Size'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.workplans.Qty'
    end
    object Query1OKQTY: TIntegerField
      FieldName = 'OKQTY'
      Origin = 'DB.workplans.OKQTY'
    end
    object Query1new: TIntegerField
      FieldName = 'new'
      Origin = 'DB.workscan.qty'
    end
    object Query1codebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 600
    Top = 240
  end
  object scansum: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'update workscan'
      'set yn='#39'N'#39
      'where yn is null and inout='#39'I'#39
      ''
      'select workid,class,size,inout'
      
        #9',convert(smalldatetime,convert(varchar,workscan.scandate,111)) ' +
        'as scandate'
      #9',sum(workscan.qty) as qty from workscan'
      
        'left join workplans on workplans.codebar=left(workscan.codebar,(' +
        'CHARINDEX('#39'-'#39',workscan.codebar)-1)) '
      'where workscan.yn = '#39'N'#39' and inout='#39'I'#39
      
        'group by workid,size,class,inout,convert(smalldatetime,convert(v' +
        'archar,workscan.scandate,111))')
    Left = 152
    Top = 264
    object scansumworkid: TStringField
      FieldName = 'workid'
      FixedChar = True
      Size = 12
    end
    object scansumclass: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 1
    end
    object scansumsize: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object scansuminout: TStringField
      FieldName = 'inout'
      FixedChar = True
      Size = 1
    end
    object scansumscandate: TDateTimeField
      FieldName = 'scandate'
    end
    object scansumqty: TIntegerField
      FieldName = 'qty'
    end
  end
  object UpdataQuery: TQuery
    DatabaseName = 'db'
    Left = 560
    Top = 280
  end
  object checkquery: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select workplans.*,colorclass.englishname,'
      
        '(case when workplans.sno='#39'1'#39' then workplans.pbarcode*12 else wor' +
        'kplans.qty end) as pqty'
      'from workplans'
      'left join colorclass on colorclass.colorno=workplans.colorno'
      'where codebar=:codebar'
      'order by WorkID desc,Sno asc')
    Left = 560
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codebar'
        ParamType = ptUnknown
      end>
  end
  object UpdateSQL1: TUpdateSQL
    Left = 528
    Top = 240
  end
  object scq: TQuery
    CachedUpdates = True
    DatabaseName = 'db'
    DataSource = DataSource2
    RequestLive = True
    SQL.Strings = (
      'select * from workwhsds '
      'where workid =:workid'
      '        and size =:size'
      '        and Class =:Class'
      '        and InOut =:inout'
      
        '        and convert(smalldatetime,convert(varchar,scandate,111))' +
        '='
      '        convert(smalldatetime,convert(varchar,:scandate,111))')
    UpdateObject = upwwdhsds
    Left = 152
    Top = 208
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'workid'
        ParamType = ptUnknown
        Size = 13
      end
      item
        DataType = ftFixedChar
        Name = 'size'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'class'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'inout'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftDateTime
        Name = 'scandate'
        ParamType = ptUnknown
        Size = 8
      end>
    object scqWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object scqSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object scqClass: TStringField
      FieldName = 'Class'
      FixedChar = True
      Size = 1
    end
    object scqInOut: TStringField
      FieldName = 'InOut'
      FixedChar = True
      Size = 1
    end
    object scqscanDate: TDateTimeField
      FieldName = 'scanDate'
    end
    object scqQty: TIntegerField
      FieldName = 'Qty'
    end
    object scqUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object scqUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
  end
  object updateq: TQuery
    DatabaseName = 'db'
    Left = 152
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = scansum
    Left = 192
    Top = 264
  end
  object upwwdhsds: TUpdateSQL
    ModifySQL.Strings = (
      'update workwhsds'
      'set'
      '  WorkID = :WorkID,'
      '  Size = :Size,'
      '  Class = :Class,'
      '  InOut = :InOut,'
      '  scanDate = :scanDate,'
      '  Qty = :Qty,'
      '  UpdateDate = :UpdateDate,'
      '  UserID = :UserID'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Size = :OLD_Size and'
      '  Class = :OLD_Class and'
      '  InOut = :OLD_InOut and'
      '  scanDate = :OLD_scanDate')
    InsertSQL.Strings = (
      'insert into workwhsds'
      
        '  (WorkID, Size, Class, InOut, scanDate, Qty, UpdateDate, UserID' +
        ')'
      'values'
      
        '  (:WorkID, :Size, :Class, :InOut, :scanDate, :Qty, :UpdateDate,' +
        ' :UserID)')
    DeleteSQL.Strings = (
      'delete from workwhsds'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Size = :OLD_Size and'
      '  Class = :OLD_Class and'
      '  InOut = :OLD_InOut and'
      '  scanDate = :OLD_scanDate')
    Left = 192
    Top = 208
  end
  object checkcode: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select * from workscan'
      'where codebar=:codebar')
    Left = 560
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codebar'
        ParamType = ptUnknown
      end>
  end
end
