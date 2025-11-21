object DeliveryMatConBarcode: TDeliveryMatConBarcode
  Left = 112
  Top = 70
  Width = 1136
  Height = 557
  Caption = 'DeliveryMatConBarcode'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 519
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 705
      Top = 73
      Width = 7
      Height = 445
      Align = alRight
      Color = clMedGray
      ParentColor = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1118
      Height = 72
      Align = alTop
      BevelOuter = bvLowered
      Color = 14737600
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label3: TLabel
        Left = 10
        Top = 2
        Width = 177
        Height = 23
        AutoSize = False
        Caption = 'SO LUONG VAT TU:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MatBarCodeEdit: TEdit
        Left = 9
        Top = 21
        Width = 448
        Height = 44
        AutoSize = False
        BevelOuter = bvRaised
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -40
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyPress = MatBarCodeEditKeyPress
      end
    end
    object DBGrid2: TDBGridEh
      Left = 712
      Top = 73
      Width = 407
      Height = 445
      Align = alRight
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
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
          FieldName = 'XH'
          Footer.FieldName = 'XH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'No|XH'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 33
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#32232#34399'|MatNO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#21517#31281'|YWPM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 207
        end
        item
          EditButtons = <>
          FieldName = 'RemQty'
          Footer.FieldName = 'RemQty'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #25976#37327'|Qty'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 45
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 73
      Width = 704
      Height = 445
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      object Splitter1: TSplitter
        Left = 1
        Top = 169
        Width = 702
        Height = 9
        Cursor = crVSplit
        Align = alTop
        Color = clMedGray
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 702
        Height = 168
        Align = alTop
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|MatNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#21517#31281'|MatNM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 396
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'TempQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30332#26009#25976#37327'|TempQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            Color = clYellow
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'SCANQty'
            Footers = <>
            Title.Caption = #25475#25551'|ScanQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 63
          end>
      end
      object DBGrid1: TDBGridEh
        Left = 1
        Top = 178
        Width = 702
        Height = 266
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#26448#26009#21934'|LLNO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29983#29986#32218'|DepName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#21517#31281'|MatNM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 254
          end
          item
            EditButtons = <>
            FieldName = 'TempQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30332#26009#25976#37327'|TempQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ScanQty'
            Footers = <>
            Title.Caption = #25475#25551#25976#37327'|ScanQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#34399'|SCBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #36008#26550#32232#34399'|KCBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38936#26009#21407#22240'|YWSM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'BLSB'
            Footers = <>
            PickList.Strings = (
              'Y'
              'N')
            ReadOnly = True
            Title.Caption = #26159#21542#35036'|BLSB'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 58
          end>
      end
    end
  end
  object KCRKScan: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCRKScan.RKNO,KCRKScan.CLBH,KCRKScan.XH,CLZL.ywpm,Sum(KCR' +
        'KScan.Qty-IsNull(KCRK_OM.LLQty,0)) as RemQty from KCRKScan'
      'left join ('
      '  select RKNO,CLBH,XH,Sum(IsNull(Qty,0)) as LLQty from KCRKScan'
      
        '  where  YN<>5 and SB=2 and KCRKScan.RKNO ='#39'20171000002'#39' and KCR' +
        'KScan.CLBH='#39'L090000232'#39' and KCRKScan.XH=1  '
      '  Group by RKNO,CLBH,XH'
      
        '  ) KCRK_OM on KCRK_OM.RKNO=KCRKScan.RKNO and  KCRK_OM.CLBH=KCRK' +
        'Scan.CLBH and KCRK_OM.XH=KCRKScan.XH'
      'left join CLZL on CLZL.cldh=KCRKScan.CLBH'
      'where KCRKScan.RKNO ='#39'20171000002'#39' '
      '      and KCRKScan.CLBH='#39'L090000232'#39' '
      '      and KCRKScan.XH=1 '
      '      and KCRKScan.SB=1'
      '      and 1=2'
      'Group by KCRKScan.RKNO,KCRKScan.CLBH,KCRKScan.XH,CLZL.YWPM      '
      'having sum(KCRKScan.Qty-IsNull(KCRK_OM.LLQty,0))>0')
    UpdateObject = UpdateSCAN
    Left = 844
    Top = 156
    object KCRKScanRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKScanCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCRKScanXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object KCRKScanywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object KCRKScanRemQty: TFloatField
      FieldName = 'RemQty'
    end
  end
  object DS3: TDataSource
    DataSet = KCRKScan
    Left = 844
    Top = 188
  end
  object UpdateSCAN: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '   KCKRScan'
      'Set'
      '   Qty = :Qty,'
      '   USERID= :USERID,'
      '   USERDATE= :USERDATE'
      'where'
      '   RKNO = :OLD_CGNO  and'
      '   CLBH = :OLD_CLBH  and'
      '   XH = :OLD_XH  and'
      '   SB = :OLD_SB')
    InsertSQL.Strings = (
      'Insert into  KCRKScan'
      '    (RKNO , CLBH, XH, SB, Qty, USERID, USERDATE, YN)'
      'Values'
      '    (:RKNO ,:CLBH , :XH, :SB, :Qty :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'Delete'
      'From'
      '   KCKRScan'
      'where'
      '   RKNO = :OLD_CGNO  and'
      '   CLBH = :OLD_CLBH  and'
      '   XH = :OLD_XH  and'
      '   SB = :OLD_SB')
    Left = 843
    Top = 220
  end
  object MatQuery: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCLLS.*,CLZL.ywpm from ( '
      
        'select KCLL.CKBH,KCLLS.CLBH,Sum(KCLLS.TempQty) as TempQty,Sum(SC' +
        'ANQty) as SCANQty'
      'from KCLLS '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'where KCLLS.LLNO in ('#39'20171000405'#39','#39'20171011934'#39')'
      'Group by KCLL.CKBH,KCLLS.CLBH ) KCLLS'
      'inner join CLZL on CLZL.CLDH=KCLLS.CLBH')
    UpdateObject = UpdateMat
    Left = 452
    Top = 116
    object MatQueryCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object MatQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object MatQueryTempQty: TCurrencyField
      FieldName = 'TempQty'
    end
    object MatQueryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object MatQuerySCANQty: TCurrencyField
      FieldName = 'SCANQty'
    end
  end
  object DS2: TDataSource
    DataSet = MatQuery
    Left = 452
    Top = 148
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 418
    Top = 116
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 418
    Top = 148
  end
  object UpdateMat: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '   CGZLS_SCAN'
      'Set'
      '   LLQty = :LLQty,'
      '   LLUSERID= :LLUSERID,'
      '   LLUSERDATE= :LLUSERDATE'
      'where'
      '   CGNO = :OLD_CGNO  and'
      '   CLBH = :OLD_CLBH  and'
      '   Pack = :OLD_Pack')
    InsertSQL.Strings = (
      'Insert into CGZLS_SCAN'
      '    (CGNO , CLBH, Pack, TmpQty, USERID, USERDATE, YN)'
      'Values'
      '    (:CGNO ,:CLBH , :Pack, :TmpQty,  :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'Delete'
      'From'
      '   CGZLS_SCAN'
      'where'
      '   CGNO = :OLD_CGNO  and'
      '   CLBH = :OLD_CLBH  and'
      '   Pack = :OLD_Pack')
    Left = 451
    Top = 180
  end
  object DelDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.TempQty,' +
        'KCLLS.ScanQty,KCLLS.BLSB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,'
      '         DDZL.YN as DDYN,SCBLYY.YWSM,'
      
        '         KCLL.GSBH,KCLL.DepID,BDepartment.DepName,KCLL.CKBH,KCLL' +
        '.USERID,KCLL.USERDATE,KCLL.CFMID,KCLL.CFMDate,KCLLS.ScanUSERID,K' +
        'CLLS.ScanUSERDATE,1 as flowindex    '
      'from KCLLS'
      'inner join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'inner join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join BDepartment on KCLL.DepID=BDepartment.ID  '
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH '
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'where KCLLS.LLNO='#39'20171000405'#39'  and KCLL.GSBH='#39'VA12'#39' and KCLL.CF' +
        'MID='#39'NO'#39'  and 1=2'
      'order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH')
    UpdateObject = UPDet
    Left = 449
    Top = 308
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetTempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '#,##0.00'
    end
    object DelDetScanQty: TCurrencyField
      FieldName = 'ScanQty'
      DisplayFormat = '#,##0.00'
    end
    object DelDetBLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object DelDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetDDYN: TStringField
      FieldName = 'DDYN'
      FixedChar = True
      Size = 1
    end
    object DelDetYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object DelDetGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DelDetDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object DelDetDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DelDetCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DelDetCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object DelDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object DelDetSCanUSERID: TStringField
      FieldName = 'SCanUSERID'
      FixedChar = True
      Size = 15
    end
    object DelDetScanUSERDATE: TDateTimeField
      FieldName = 'ScanUSERDATE'
    end
    object DelDetFlowIndex: TIntegerField
      FieldName = 'FlowIndex'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  ScanQty = :ScanQty,'
      '  ScanUSERID = :ScanUSERID,'
      '  ScanUSERDATE =:ScanUSERDATE'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH'
      ''
      ''
      '')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (Qty, BLSB)'
      'values'
      '  (:Qty, :BLSB)'
      '')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH'
      ''
      '')
    Left = 449
    Top = 368
  end
  object DS1: TDataSource
    DataSet = DelDet
    Left = 449
    Top = 340
  end
end
