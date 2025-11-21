object scanout: Tscanout
  Left = 423
  Top = 235
  Width = 732
  Height = 480
  Caption = 'Scan to Shipping'
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
    Width = 716
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
      ItemIndex = 0
      TabOrder = 0
      Items.Strings = (
        ''
        'VA12'
        'VA3'
        'VB1')
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
      Left = 576
      Top = 40
      Width = 75
      Height = 25
      Caption = 'StorageOut'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 716
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
        FieldName = 'ysbh'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'size'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cts'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OLDqty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okcts'
        Visible = True
      end
      item
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
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'db1'
    RequestLive = True
    SQL.Strings = (
      
        'select smdd.ysbh,smddss.xxcc as size,smddss.qty*smddss.okcts as ' +
        'OLDqty,'
      
        '      smddss.okcts,0 as newcts,0 as Totqty,smddss.qty,cts,codeba' +
        'r '
      'from smddss'
      
        'LEFT JOIN smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxl' +
        'b'
      'where smdd.gxlb='#39'O'#39' and CODEBAR='#39#39)
    UpdateObject = UpdateSQL1
    Left = 560
    Top = 240
    object Query1ysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
    object Query1size: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
    object Query1OLDqty: TIntegerField
      FieldName = 'OLDqty'
    end
    object Query1okcts: TIntegerField
      FieldName = 'okcts'
    end
    object Query1newcts: TIntegerField
      FieldName = 'newcts'
      OnChange = Query1newctsChange
    end
    object Query1Totqty: TIntegerField
      FieldName = 'Totqty'
    end
    object Query1qty: TIntegerField
      FieldName = 'qty'
    end
    object Query1cts: TIntegerField
      FieldName = 'cts'
    end
    object Query1codebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 600
    Top = 240
  end
  object UpdataQuery: TQuery
    DatabaseName = 'db'
    Left = 560
    Top = 280
  end
  object cqsmdd: TQuery
    DatabaseName = 'db1'
    SQL.Strings = (
      'select smddss.*,smdd.ysbh from smddss'
      
        'left join smdd on smddss.ddbh=smdd.ddbh and smddss.gxlb=smdd.gxl' +
        'b'
      'where codebar=:codebar')
    Left = 528
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codebar'
        ParamType = ptUnknown
      end>
    object cqsmddDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object cqsmddGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object cqsmddXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object cqsmddXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object cqsmddCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object cqsmddQty: TIntegerField
      FieldName = 'Qty'
    end
    object cqsmddCTS: TIntegerField
      FieldName = 'CTS'
    end
    object cqsmddokCTS: TIntegerField
      FieldName = 'okCTS'
    end
    object cqsmddUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object cqsmddUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object cqsmddYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object cqsmddysbh: TStringField
      FieldName = 'ysbh'
      FixedChar = True
      Size = 15
    end
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
      'set yn='#39'N'#39
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
      'where workscan.yn = '#39'N'#39' and inout='#39'O'#39
      
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
  object upsmdd: TQuery
    DatabaseName = 'db1'
    Left = 560
    Top = 312
  end
end
