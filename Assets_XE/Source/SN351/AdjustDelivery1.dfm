object AdjustDelivery: TAdjustDelivery
  Left = 0
  Top = 0
  Caption = 'AdjustDelivery'
  ClientHeight = 484
  ClientWidth = 1036
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1036
    Height = 193
    Align = alTop
    DataSource = DS3
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35519#21205#21934#34399'|LLNO'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029'|LB'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'ID|DepID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#21934#20301'|DepName'
        Width = 120
      end
      item
        CellButtons = <>
        Color = 12910591
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #26085#26399'|USERDATE'
        Width = 100
      end
      item
        CellButtons = <>
        Color = 12910591
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'ID|USERID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
      end
      item
        CellButtons = <>
        Color = 12910591
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 100
      end
      item
        CellButtons = <>
        Color = 12910591
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 30
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1036
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 28
      Width = 22
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 264
      Top = 28
      Width = 99
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
    end
    object Button1: TButton
      Left = 512
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Modify'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 687
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 368
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 1036
    Height = 227
    Align = alClient
    DataSource = DS4
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footer.FieldName = 'TSID'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #36001#29986#37002#34399'|TSBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029#32232#34399'|SBBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35215#26684#32232#34399'|QUCBH'
        Width = 104
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#34399'|LSBH'
        Width = 107
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 131
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'1|PARAMENT1'
        Visible = False
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'1|Don Vi / Ghi Chu'
        Visible = False
        Width = 107
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'1|Don Vi / Ghi Chu'
        Width = 113
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT2'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'2|PARAMENT2'
        Visible = False
        Width = 104
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE2'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'2|Ngay Bat Dau'
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN2'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'2|Ngay Bat Dau'
        Width = 96
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT3'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'3|PARAMENT3'
        Visible = False
        Width = 103
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE3'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'3|Ngay Ket Thuc'
        Visible = False
        Width = 101
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN3'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'3|Ngay Ket Thuc'
        Width = 102
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT4'
        Footers = <>
        Title.Caption = #30064#21205'4|PARAMENT4'
        Visible = False
        Width = 79
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE4'
        Footers = <>
        Title.Caption = #30064#21205'4|Ngay Ket Thuc'
        Visible = False
        Width = 82
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN4'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'4|Ngay Ket Thuc'
        Width = 98
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT5'
        Footers = <>
        Title.Caption = #30064#21205'5|PARAMENT5'
        Visible = False
        Width = 80
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE5'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'5|VALUE5'
        Visible = False
        Width = 68
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN5'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'5|COLUMN5'
        Width = 70
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAMENT6'
        Footers = <>
        Title.Caption = #30064#21205'6|PARAMENT6'
        Visible = False
        Width = 64
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE6'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'6|VALUE6'
        Visible = False
        Width = 93
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN6'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205'6|COLUMN6'
        Width = 82
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 39
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20489#24235'|Location'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 116
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
      end
      item
        CellButtons = <>
        DisplayFormat = 'yyyy/MM/dd'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#26085#26399'|USERDATE'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633'ID|TSID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 28
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DelMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCLL.*,BDepartment.DepName'
      'from TSCD_KCLL KCLL'
      
        'left join TSCD_BDepartment Bdepartment on KCLL.DepID=BDepartment' +
        '.ID'
      'where KCLL.CFMID='#39'NO'#39
      'order by KCLL.LLNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object DelMasLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.TSCD_KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.TSCD_KCLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object DelMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.TSCD_KCLL.DepID'
      FixedChar = True
      Size = 10
    end
    object DelMasLB: TStringField
      FieldName = 'LB'
      Origin = 'DB.TSCD_KCLL.LB'
      FixedChar = True
    end
    object DelMasMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.TSCD_KCLL.Memo'
      FixedChar = True
    end
    object DelMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCLL.USERID'
      FixedChar = True
      Size = 10
    end
    object DelMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCLL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.TSCD_KCLL.CFMID'
      FixedChar = True
      Size = 10
    end
    object DelMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      Origin = 'DB.TSCD_KCLL.CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCLL.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.TSCD_BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCLL'
      'set'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE,'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'insert into KCLL'
      '  (SCBH, CFMDate, CFMID, YN)'
      'values'
      '  (:SCBH, :CFMDate, :CFMID, :YN)')
    DeleteSQL.Strings = (
      'delete from KCLL'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 324
    Top = 159
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 356
    Top = 132
  end
  object DelDet: TQuery
    CachedUpdates = True
    AfterOpen = DelDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID'
      
        ',TSCD_KCLLS.PARAMENT1,TSCD_KCLLS.PARAMENT2,TSCD_KCLLS.PARAMENT3,' +
        'TSCD_KCLLS.PARAMENT4,TSCD_KCLLS.PARAMENT5,TSCD_KCLLS.PARAMENT6'
      
        ',TSCD_KCLLS.VALUE1,TSCD_KCLLS.VALUE2,TSCD_KCLLS.VALUE3,TSCD_KCLL' +
        'S.VALUE4,TSCD_KCLLS.VALUE5,TSCD_KCLLS.VALUE6'
      
        ',TSCD_KCLLS.COLUMN1,TSCD_KCLLS.COLUMN2,TSCD_KCLLS.COLUMN3,TSCD_K' +
        'CLLS.COLUMN4,TSCD_KCLLS.COLUMN5,TSCD_KCLLS.COLUMN6'
      
        ',TSCD.SBBH,TSCD_SB.YWPM,TSCD_SB.VWPM,TSCD_SB.ZWPM,IsNull(JDBDep.' +
        'DepName,BDepartment.DepName) as DepName,TSCD.DepID_Memo,TSCD_KCL' +
        'LS.USERID,TSCD_KCLLS.USERDATE,TSCD_KCLLS.YN'
      ',TSCD_SB.QUCBH,TSCD_SB.LSBH,TSCD.NSX,TSCD.TSBH,TSCD_KCLLS.Qty'
      'from TSCD_KCLLS'
      'left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.De' +
        'pID'
      'left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS'
      'where TSCD_KCLLS.LLNO=:LLNO'
      'order by TSCD_KCLLS.LLNO')
    UpdateObject = UPDet
    Left = 468
    Top = 136
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object DelDetPARAMENT1: TStringField
      FieldName = 'PARAMENT1'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT2: TStringField
      FieldName = 'PARAMENT2'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT3: TStringField
      FieldName = 'PARAMENT3'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT4: TStringField
      FieldName = 'PARAMENT4'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT5: TStringField
      FieldName = 'PARAMENT5'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT6: TStringField
      FieldName = 'PARAMENT6'
      FixedChar = True
      Size = 15
    end
    object DelDetVALUE1: TStringField
      FieldName = 'VALUE1'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE2: TStringField
      FieldName = 'VALUE2'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE3: TStringField
      FieldName = 'VALUE3'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE4: TStringField
      FieldName = 'VALUE4'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE5: TStringField
      FieldName = 'VALUE5'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE6: TStringField
      FieldName = 'VALUE6'
      FixedChar = True
      Size = 50
    end
    object DelDetCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 100
    end
    object DelDetCOLUMN2: TStringField
      FieldName = 'COLUMN2'
      FixedChar = True
      Size = 100
    end
    object DelDetCOLUMN3: TStringField
      FieldName = 'COLUMN3'
      FixedChar = True
      Size = 100
    end
    object DelDetCOLUMN4: TStringField
      FieldName = 'COLUMN4'
      FixedChar = True
      Size = 100
    end
    object DelDetCOLUMN5: TStringField
      FieldName = 'COLUMN5'
      FixedChar = True
      Size = 100
    end
    object DelDetCOLUMN6: TStringField
      FieldName = 'COLUMN6'
      FixedChar = True
      Size = 100
    end
    object DelDetSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
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
    object DelDetDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object DelDetDepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object DelDetLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object DelDetNSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object DelDetTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object DelDetQty: TFloatField
      FieldName = 'Qty'
    end
    object DelDetVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCLLS'
      'set'
      '  Qty = :Qty'
      ' where'
      '  LLNO = :OLD_LLNO and'
      '  TSID=:OLD_TSID')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (CLBH, SCBH, Qty, CostID)'
      'values'
      '  (:CLBH, :SCBH, :Qty, :CostID)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 468
    Top = 161
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 500
    Top = 132
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 133
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 133
  end
end
