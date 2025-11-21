object Khothanhpham: TKhothanhpham
  Left = 503
  Top = 329
  Width = 1305
  Height = 675
  Caption = 'Kho Thanh Pham'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 6
      Top = 39
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label14: TLabel
      Left = 29
      Top = 12
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 199
      Top = 39
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YSBH:'
    end
    object Label5: TLabel
      Left = 199
      Top = 9
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Memo:'
    end
    object Label7: TLabel
      Left = 418
      Top = 9
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label8: TLabel
      Left = 406
      Top = 38
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SO KHU:'
    end
    object DDBHEdit: TEdit
      Left = 80
      Top = 36
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 899
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
    end
    object DTP: TDateTimePicker
      Left = 80
      Top = 7
      Width = 113
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button4: TButton
      Left = 995
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Excel'
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 597
      Top = 9
      Width = 57
      Height = 17
      Caption = 'Qty>0'
      TabOrder = 4
    end
    object checkRY_Memo: TCheckBox
      Left = 773
      Top = 7
      Width = 121
      Height = 17
      Caption = 'Show RY Memo'
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 597
      Top = 35
      Width = 81
      Height = 17
      Caption = 'Qty is null'
      TabOrder = 6
    end
    object TRQtyCK: TCheckBox
      Left = 687
      Top = 35
      Width = 78
      Height = 17
      Caption = 'TRQty>0'
      TabOrder = 7
    end
    object MemoEdit: TEdit
      Left = 272
      Top = 6
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object MergeYSBHCK: TCheckBox
      Left = 776
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Merge YSBH'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox3: TCheckBox
      Left = 685
      Top = 9
      Width = 57
      Height = 17
      Caption = 'Qty<0'
      TabOrder = 10
    end
    object Button6: TButton
      Left = 1093
      Top = 3
      Width = 75
      Height = 33
      Caption = 'ExcelTB'
      TabOrder = 11
    end
    object Button7: TButton
      Left = 900
      Top = 42
      Width = 87
      Height = 33
      Caption = 'Print'
      TabOrder = 12
    end
    object CKBHEdit: TEdit
      Left = 467
      Top = 6
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object KVBHEdit: TEdit
      Left = 467
      Top = 35
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object CheckBox4: TCheckBox
      Left = 597
      Top = 59
      Width = 148
      Height = 17
      Caption = 'Not include recyle'
      TabOrder = 15
    end
    object Button10: TButton
      Left = 996
      Top = 42
      Width = 89
      Height = 33
      Caption = 'Excel_KK'
      TabOrder = 16
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 81
    Width = 1289
    Height = 555
    Align = alClient
    Color = clMenu
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20489#24235#20301#32622'|CKBH'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.FieldName = 'Pairs'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'LastRem'
        Footer.FieldName = 'LastRem'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#25976#37327'|RKQty'
      end
      item
        EditButtons = <>
        FieldName = 'TRQty'
        Footer.FieldName = 'TRQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25286#21934#20986#24235'|TRQty'
      end
      item
        EditButtons = <>
        FieldName = 'XHQty'
        Footer.FieldName = 'XHQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #20986#36008#25976#37327'|XHQty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #30446#21069#25976#37327'|Qty'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footer.FieldName = 'ShipDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38928#35336#20132#26399'|ShipDate'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SKU#|ARTICLE'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footer.FieldName = 'DDZT'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#29376#24907'|DDZT'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 181
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'KVBH'
        Footers = <>
        Title.Caption = 'SO KHU'
      end>
  end
  object EXEQry: TQuery
    DatabaseName = 'DB'
    Left = 416
    Top = 224
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 464
    Top = 192
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 504
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    Select YWCPMONTH.*,DDZL.ARTICLE,YWCPMemo.Memo '
      #9'From YWCPMONTH   '
      #9'Left join YWCPMemo on YWCPMemo.DDBH=YWCPMONTH.DDBH '
      #9'left join DDZL on YWCPMONTH.DDBH=DDZL.DDBH'
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9#9' and YWCPMONTH.KCMONTH='#39'06'#39)
    UpdateObject = UPDet1
    Left = 464
    Top = 224
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.YWCPMONTH.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.YWCPMONTH.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCPMONTH.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCPMONTH.Qty'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.YWCPMONTH.VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      Origin = 'DB.YWCPMONTH.VNACC'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCPMONTH.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.YWCPMemo.Memo'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCPMONTH.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCPMONTH.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCPMONTH.YN'
      FixedChar = True
      Size = 1
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YWDDM.DDBH,YWDDM.YSBH,YWDDM.CKBH,IsNull(YWDD.Qty,DDZL.Pai' +
        'rs) as Pairs,YWDDM.LastRem,YWDDM.RKQty,YWDDM.XHQty,YWDDM.TRQty,Y' +
        'WDDM.Qty,'
      
        '       DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo,'#39'CONVE' +
        'RSE'#39' as Customer,'#39'Giay thanh pham'#39' as ModelName,KCCLMONTH_Order.' +
        'KVBH'
      'from ('
      
        '  Select YWCP.DDBH,IsNull(YWDD.YSBH,YWCP.DDBH) as YSBH,Max(YWCP.' +
        'CKBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as R' +
        'KQty,'
      
        '         Sum(YWCPXH.Qty) as XHQty,SUM(YWCPMONTH_DDZLTR.Qty) as T' +
        'RQty,Case when SUM(YWCP.Qty) is not null and SUM(YWCPMONTH_DDZLT' +
        'R.Qty) is not null then SUM(YWCP.Qty)-SUM(YWCPMONTH_DDZLTR.Qty) ' +
        'else SUM(YWCP.Qty) end as Qty'
      '  from ('
      #9'Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from ('
      
        '    Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB' +
        ' '
      '    From YWCPMONTH   '
      '    where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9#9'and YWCPMONTH.KCMONTH='#39'10'#39' '
      '    Union all '#9#9
      '    select null as CKBH,DDBH1,null as Qty,'#39'1'#39' as SB '
      '    from YWCPMONTH_DDZLTR'
      '    where YWCPMONTH_DDZLTR.KCYEAR='#39'2022'#39'  '
      #9'  and YWCPMONTH_DDZLTR.KCMONTH='#39'10'#39'   '
      #9'  and YWCPMONTH_DDZLTR.DDBH1 not in ('
      #9'       select DDBH from YWCPMONTH'
      '           where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9'       and YWCPMONTH.KCMONTH='#39'10'#39'  '#9
      #9#9')'#9
      #9'Group by DDBH1'
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH'
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,-1*Sum( Case when SB='#39'3' +
        #39' then YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH  '
      #9') YWCPMONTH'
      #9'Group by DDBH  ) YWCP  '
      '  Left join  ('
      
        '    Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB' +
        ' '
      #9'From YWCPMONTH   '
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      
        #9#9' and YWCPMONTH.KCMONTH='#39'10'#39'  ) YWCPMonth on YWCP.DDBH=YWCPMont' +
        'h.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum( Case when SB='#39'3'#39' t' +
        'hen YWCP.Qty else 0 end) as Qty,'#39'5'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH'
      '  Left join ('
      
        '    Select null as CKBH,YWCPMONTH_DDZLTR.DDBH,Sum(YWCPMONTH_DDZL' +
        'TR.Qty) as Qty,'#39'6'#39' as SB '
      #9'From YWCPMONTH_DDZLTR   '
      #9'where YWCPMONTH_DDZLTR.KCYEAR='#39'2022'#39'  '
      #9#9' and YWCPMONTH_DDZLTR.KCMONTH='#39'10'#39
      #9'Group by YWCPMONTH_DDZLTR.DDBH  '
      '  ) YWCPMONTH_DDZLTR on YWCP.DDBH=YWCPMONTH_DDZLTR.DDBH'
      '  Left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '  Group by YWDD.YSBH,YWCP.DDBH'
      '   ) YWDDM'
      'Left join YWCPMemo on YWCPMemo.DDBH=YWDDM.YSBH '
      'left join DDZL on YWDDM.YSBH=DDZL.DDBH '
      'left join YWDD on YWDDM.DDBH=YWDD.DDBH'
      
        'left join KCCLMONTH_Order on YWDDM.DDBH = KCCLMONTH_Order.DDBH a' +
        'nd KCYEAR= '#39'2022'#39' and KCMONTH='#39'11'#39' '
      'where 1=1 and DDZL.GSBH='#39'TBA'#39
      '   and YWDDM.DDBH like '#39'DV2207-0329%'#39)
    Left = 504
    Top = 224
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query2LastRem: TIntegerField
      FieldName = 'LastRem'
    end
    object Query2RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query2TRQty: TIntegerField
      FieldName = 'TRQty'
    end
    object Query2XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query2ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query2CTS: TIntegerField
      FieldName = 'CTS'
    end
    object Query2Customer: TStringField
      FieldName = 'Customer'
      FixedChar = True
      Size = 8
    end
    object Query2ModelName: TStringField
      FieldName = 'ModelName'
      FixedChar = True
      Size = 15
    end
    object Query2KVBH: TStringField
      FieldName = 'KVBH'
      FixedChar = True
      Size = 10
    end
    object Query2STT: TStringField
      FieldName = 'STT'
      Size = 10
    end
  end
  object UPDet1: TUpdateSQL
    ModifySQL.Strings = (
      'Update YWCPMONTH'
      'set'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  DDBH= :OLD_DDBH ')
    Left = 465
    Top = 259
  end
  object UPDet2: TUpdateSQL
    ModifySQL.Strings = (
      'Update YWCPMemo'
      'set'
      '  Memo =:Memo,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH =:OLD_DDBH')
    InsertSQL.Strings = (
      'Insert into YWCPMemo'
      '   (DDBH, Memo, UserID, UserDate, YN)'
      'Values'
      '   (:DDBH, :Memo, :UserID, :UserDate, :YN) ')
    Left = 505
    Top = 259
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 466
    Top = 298
    object Modify1: TMenuItem
      Caption = 'Modify'
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
    end
    object RYMemo1: TMenuItem
      Caption = 'RY Memo'
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 506
    Top = 298
    object Modify2: TMenuItem
      Caption = 'Modify'
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object menu1: TMenuItem
      Caption = 'Dao tach don hang toan bo Thang'
    end
    object menu2: TMenuItem
      Caption = 'Xoa tach don hang toan bo Thang'
    end
    object menu3: TMenuItem
      Caption = 'Xem tach don hang chi tet'
    end
  end
  object query_excelTBA: TQuery
    DatabaseName = 'DB'
    Left = 572
    Top = 227
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YWCP.DDBH,YWCP.CKBH,DDZL.Pairs,YWCP.Qty,YWCP.CTS,DDZL.ART' +
        'ICLE,DDZL.ShipDate,DDZL.DDZT'
      'From ('
      
        #9#9'Select Max(YWCP.KCBH) as CKBH,case when ddzltr.DDBH1 is not nu' +
        'll then ddzltr.DDBH else YWCP.DDBH end DDBH,Sum( Case when SB='#39'2' +
        #39' then YWCP.Qty else 0 end) as Qty,'#39'4'#39' as SB,count(*) as CTS '
      
        #9#9'From ( Select * from YWCP union all Select * from YWCPOld) YWC' +
        'P '
      #9#9'Left join DDZL on YWCP.DDBH=DDZL.DDBH '
      #9#9'Left join DDZLTR on ywcp.DDBH=ddzltr.DDBH1 '
      
        #9#9'Where DDZL.GSBH='#39'VA12'#39' and convert(smalldatetime,convert(varch' +
        'ar,YWCP.OUTDATE,111)) between '#39'2024/06/01'#39' and '#39'2024/06/23'#39' and ' +
        'IsNull(SB,'#39#39')='#39'2'#39' '
      '        and YWCP.DDBH not in (select DDBH from DDZLTR)'
      '        Group by YWCP.DDBH,ddzltr.DDBH1,ddzltr.DDBH ) YWCP '
      'left join DDZL on YWCP.DDBH=DDZL.DDBH '
      'where DDZL.GSBH='#39'VA12'#39)
    UpdateObject = UPDet2
    Left = 648
    Top = 224
    object Query5DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query5CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 10
    end
    object Query5Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query5Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query5CTS: TIntegerField
      FieldName = 'CTS'
    end
    object Query5ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query5ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query5DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 647
    Top = 192
  end
end
