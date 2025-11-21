object keyin: Tkeyin
  Left = 305
  Top = 202
  Width = 928
  Height = 480
  Caption = 'Key In'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 103
      Height = 20
      Caption = 'Select WorkID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 88
      Top = 48
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
    object workidcb: TComboBox
      Left = 136
      Top = 24
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object Query: TButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = QueryClick
    end
    object b2: TButton
      Left = 408
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 2
      Visible = False
      OnClick = b2Click
    end
    object CLassCB: TComboBox
      Left = 136
      Top = 48
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Morning'
        'Noon'
        'Night')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 912
    Height = 369
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
        FieldName = 'workid'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'size'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mjbh'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'englishname'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldqty'
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'cts'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totqty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pbarcode'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 304
    Top = 184
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object tempq: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select workid from workplans'
      'where qty > okqty'
      'group by workid')
    Left = 192
    Top = 32
  end
  object workplansedit: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select workid,sno,size,mjbh,workplans.colorno,colorclass.english' +
        'name,qty,okqty as oldqty'
      ',0 as cts,0 as totqty,codebar,pbarcode from workplans'
      'left join colorclass on workplans.colorno=colorclass.colorno')
    UpdateObject = wpsu
    Left = 440
    Top = 120
    object workplanseditworkid: TStringField
      FieldName = 'workid'
      FixedChar = True
      Size = 12
    end
    object workplanseditsno: TIntegerField
      FieldName = 'sno'
    end
    object workplanseditsize: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object workplanseditmjbh: TStringField
      FieldName = 'mjbh'
      FixedChar = True
    end
    object workplanseditenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 50
    end
    object workplanseditqty: TIntegerField
      FieldName = 'qty'
    end
    object workplanseditoldqty: TIntegerField
      FieldName = 'oldqty'
    end
    object workplanseditcts: TIntegerField
      FieldName = 'cts'
      OnChange = workplanseditctsChange
    end
    object workplansedittotqty: TIntegerField
      FieldName = 'totqty'
    end
    object workplanseditcolorno: TStringField
      FieldName = 'colorno'
      FixedChar = True
      Size = 4
    end
    object workplanseditcodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
    object workplanseditpbarcode: TIntegerField
      FieldName = 'pbarcode'
    end
  end
  object DataSource1: TDataSource
    DataSet = workplansedit
    Left = 400
    Top = 120
  end
  object wpsu: TUpdateSQL
    ModifySQL.Strings = (
      'update workplans'
      'set'
      '  okqty = :oldqty'
      'where'
      '  workid = :OLD_workid and'
      '  sno = :OLD_sno and'
      '  size = :OLD_size and'
      '  mjbh = :OLD_mjbh and'
      '  colorno = :OLD_colorno')
    Left = 480
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'db'
    Left = 496
    Top = 24
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
  object DataSource2: TDataSource
    DataSet = scansum
    Left = 192
    Top = 264
  end
  object scansum: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'update workscan'
      'set yn='#39'N'#39' '
      'where yn is null and inout='#39'I'#39
      ''
      'select workid,class,size,inout'
      
        #9',convert(smalldatetime,convert(varchar,workscan.scandate,111)) ' +
        'as scandate'
      #9',sum(workscan.qty) as qty from workscan'
      
        'left join workplans on workplans.codebar=left(workscan.codebar,(' +
        'CHARINDEX('#39'-'#39',workscan.codebar)-1))'
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
  object updateq: TQuery
    DatabaseName = 'db'
    Left = 152
    Top = 312
  end
end
