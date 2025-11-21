object keyout: Tkeyout
  Left = 247
  Top = 222
  Width = 608
  Height = 480
  Caption = 'Key In Shipping'
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
    Width = 592
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 16
      Width = 72
      Height = 20
      Caption = 'Select RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 40
      Width = 53
      Height = 20
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object workidcb: TComboBox
      Left = 136
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
    end
    object Query: TButton
      Left = 296
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = QueryClick
    end
    object b2: TButton
      Left = 408
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 2
      Visible = False
      OnClick = b2Click
    end
    object fatcb: TComboBox
      Left = 136
      Top = 40
      Width = 57
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 592
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
        FieldName = 'ddbh'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xxcc'
        Title.Caption = 'Size'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldqty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'needcts'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldcts'
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'newcts'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Totqty'
        Visible = True
      end>
  end
  object tempq: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select workplanss.ddbh from workplanss'
      
        'left join liy_erp.dbo.smdd on workplanss.ddbh=liy_erp.dbo.smdd.y' +
        'sbh'
      
        'left join liy_erp.dbo.smddss on liy_erp.dbo.smdd.ddbh=liy_erp.db' +
        'o.smddss.ddbh'
      'where liy_erp.dbo.smdd.gxlb='#39'O'#39' and cts > okcts'
      'group by workplanss.ddbh')
    Left = 192
    Top = 32
  end
  object workplansedit: TQuery
    DatabaseName = 'db1'
    SQL.Strings = (
      
        'select smddss.ddbh,xxcc,(smddss.cts*smddss.qty) as oldqty,codeba' +
        'r,smddss.qty'
      
        #9',cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty from sm' +
        'ddss'
      
        'left join smdd on smddss.ddbh=smdd.ysbh and smddss.gxlb=smdd.gxl' +
        'b'
      'where smdd.gxlb='#39'O'#39' '
      #9'and cts > okcts'
      #9'and ysbh>='#39'Y1203-056'#39
      'order by smddss.ddbh')
    UpdateObject = wpsu
    Left = 440
    Top = 120
    object workplanseditddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object workplanseditxxcc: TStringField
      FieldName = 'xxcc'
      FixedChar = True
      Size = 6
    end
    object workplanseditoldqty: TIntegerField
      FieldName = 'oldqty'
    end
    object workplanseditneedcts: TIntegerField
      FieldName = 'needcts'
    end
    object workplanseditoldcts: TIntegerField
      FieldName = 'oldcts'
    end
    object workplanseditnewcts: TIntegerField
      FieldName = 'newcts'
      OnChange = workplanseditnewctsChange
    end
    object workplanseditTotqty: TIntegerField
      FieldName = 'Totqty'
    end
    object workplanseditcodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
    end
    object workplanseditqty: TIntegerField
      FieldName = 'qty'
    end
  end
  object DataSource1: TDataSource
    DataSet = workplansedit
    Left = 400
    Top = 120
  end
  object wpsu: TUpdateSQL
    ModifySQL.Strings = (
      'update smddss'
      'set'
      '  OKcts = :oldcts'
      'where'
      '  ddbh = :OLD_ddbh and'
      '  xxcc = :OLD_xxcc')
    InsertSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    Left = 480
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select * from db1.smdd')
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
      'where yn is null and inout='#39'O'#39
      ''
      'select workid,class,xxcc as size,inout'
      
        #9',convert(smalldatetime,convert(varchar,workscan.scandate,111)) ' +
        'as scandate'
      #9',sum(workscan.qty) as qty from workscan'
      
        'left join liy_erp.dbo.smddss on liy_erp.dbo.smddss.codebar=works' +
        'can.codebar '
      
        'left join liy_erp.dbo.smdd on liy_erp.dbo.smdd.ddbh=liy_erp.dbo.' +
        'smddss.ddbh '
      #9#9#9'and liy_erp.dbo.smdd.gxlb=liy_erp.dbo.smddss.gxlb '
      'left join workplanss on liy_erp.dbo.smdd.ysbh = workplanss.ddbh '
      'where workscan.yn = '#39'N'#39'  and inout='#39'O'#39
      
        'group by workid,xxcc,class,inout,convert(smalldatetime,convert(v' +
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
