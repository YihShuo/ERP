object ProductionOut: TProductionOut
  Left = 246
  Top = 136
  Width = 1305
  Height = 675
  Caption = 'Production Out'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
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
    object workidcb: TComboBox
      Left = 136
      Top = 13
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object Query: TButton
      Left = 304
      Top = 20
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = QueryClick
    end
    object UpdateBtn: TButton
      Left = 392
      Top = 20
      Width = 75
      Height = 33
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = UpdateBtnClick
    end
    object CLassCB: TComboBox
      Left = 136
      Top = 40
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'Morning'
      Items.Strings = (
        'Morning'
        'Noon'
        'Night')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1297
    Height = 571
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'ddbh'
        Footers = <>
        Title.Caption = 'Order No'
      end
      item
        EditButtons = <>
        FieldName = 'codebar'
        Footers = <>
        Title.Caption = 'Barcode'
      end
      item
        EditButtons = <>
        FieldName = 'xxcc'
        Footers = <>
        Title.Caption = 'SIZE'
      end
      item
        EditButtons = <>
        FieldName = 'oldqty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'needcts'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'oldcts'
        Footers = <>
      end
      item
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'newcts'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Totqty'
        Footers = <>
      end>
  end
  object tempq: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select workplanss.ddbh from LIY_DD.dbo.workplanss workplanss'
      
        'inner join DDZL on DDZL.DDBH=workplanss.ddbh and DDZL.GSBH='#39'VA12' +
        #39' and DDZL.YN=1'
      
        'left join liy_erp.dbo.smdd on workplanss.ddbh=liy_erp.dbo.smdd.y' +
        'sbh'
      
        'left join liy_erp.dbo.smddss on liy_erp.dbo.smdd.ddbh=liy_erp.db' +
        'o.smddss.ddbh'
      'where liy_erp.dbo.smdd.gxlb='#39'O'#39' and cts > okcts'
      'group by workplanss.ddbh'
      'order by  workplanss.ddbh desc')
    Left = 208
    Top = 160
  end
  object scq: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DataSource2
    RequestLive = True
    SQL.Strings = (
      'select * from LIY_DD.dbo.workwhsds '
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
      'update LIY_DD.dbo.workwhsds'
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
      'insert into LIY_DD.dbo.workwhsds'
      
        '  (WorkID, Size, Class, InOut, scanDate, Qty, UpdateDate, UserID' +
        ')'
      'values'
      
        '  (:WorkID, :Size, :Class, :InOut, :scanDate, :Qty, :UpdateDate,' +
        ' :UserID)')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.workwhsds'
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
    DatabaseName = 'DB'
    SQL.Strings = (
      'update LIY_DD.dbo.workscan'
      'set yn='#39'N'#39' '
      'where yn is null and inout='#39'O'#39
      ''
      'select workid,class,xxcc as size,inout'
      
        #9',convert(smalldatetime,convert(varchar,workscan.scandate,111)) ' +
        'as scandate'
      #9',sum(workscan.qty) as qty from LIY_DD.dbo.workscan workscan'
      
        'left join liy_erp.dbo.smddss on liy_erp.dbo.smddss.codebar=works' +
        'can.codebar'
      
        'left join liy_erp.dbo.smdd on liy_erp.dbo.smdd.ddbh=liy_erp.dbo.' +
        'smddss.ddbh'
      #9#9#9'and liy_erp.dbo.smdd.gxlb=liy_erp.dbo.smddss.gxlb'
      
        'left join LIY_DD.dbo.workplanss workplanss on liy_erp.dbo.smdd.y' +
        'sbh = workplanss.ddbh'
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
    DatabaseName = 'DB'
    Left = 152
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = workplansedit
    Left = 400
    Top = 176
  end
  object workplansedit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select smddss.ddbh,smddss.xxcc,(smddss.OKcts*smddss.qty) as oldq' +
        'ty,(codebar+'#39'-'#39') as codebar,smddss.qty'
      
        #9'      ,cts as needcts,okcts as oldcts,0 as newcts,0 as Totqty,S' +
        'MDD.DepNO,XXGJS.GJCC from smddss '
      
        'left join smdd on smddss.ddbh=smdd.ddbh and smddss.gxlb=smdd.gxl' +
        'b '
      'left join ddzl on ddzl.ddbh=smdd.ysbh  '
      
        'left join  XXGJS on DDZL.XieXing=XXGJS.XieXing and XXGJS.GJLB='#39'1' +
        '01'#39' and XXGJS.XXCC=smddss.XXCC  '
      'where smdd.gxlb='#39'O'#39' and cts > okcts'#9' '
      'and YSBH='#39'Y1804-1071'#39' '
      'and SMDD.GSBH='#39'VR3'#39)
    UpdateObject = wpsu
    Left = 440
    Top = 176
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
    object workplanseditDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object workplanseditGJCC: TStringField
      FieldName = 'GJCC'
      FixedChar = True
      Size = 6
    end
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
    Top = 176
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 208
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from smdd')
    Left = 496
    Top = 24
  end
end
