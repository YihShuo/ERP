object EquipmentConfirm_BB: TEquipmentConfirm_BB
  Left = 394
  Top = 297
  Caption = 'Discard Equipment Confirm'
  ClientHeight = 574
  ClientWidth = 1137
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 201
    Width = 1137
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clGrayText
    ParentColor = False
    ExplicitWidth = 1044
  end
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 1137
    Height = 43
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 17
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 263
      Top = 16
      Width = 43
      Height = 16
      Caption = 'LLNO:'
    end
    object Button1: TButton
      Left = 472
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 559
      Top = 6
      Width = 81
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 648
      Top = 6
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 13
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 152
      Top = 13
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 311
      Top = 13
      Width = 137
      Height = 24
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 728
      Top = 16
      Width = 177
      Height = 17
      Caption = 'Show Already Confirm'
      TabOrder = 6
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 249
    Width = 1137
    Height = 325
    Align = alClient
    DataSource = DS2
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 1
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
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 131
      end
      item
        CellButtons = <>
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
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
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN4'
        Footers = <>
        Title.Caption = #30064#21205'4|Ngay Ket Thuc'
        Width = 98
      end
      item
        CellButtons = <>
        Color = clYellow
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
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE5'
        Footers = <>
        Title.Caption = #30064#21205'5|VALUE5'
        Visible = False
        Width = 68
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN5'
        Footers = <>
        Title.Caption = #30064#21205'5|COLUMN5'
        Width = 70
      end
      item
        CellButtons = <>
        Color = clYellow
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
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'VALUE6'
        Footers = <>
        Title.Caption = #30064#21205'6|VALUE6'
        Visible = False
        Width = 93
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'COLUMN6'
        Footers = <>
        Title.Caption = #30064#21205'6|COLUMN6'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1137
    Height = 201
    Align = alTop
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #35519#21205#21934#34399'|LLNO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        PickList.Strings = (
          '01.Chuyen vi tri'
          '02.Bao Phe'
          '03.Cho Muon'
          '')
        ReadOnly = True
        Title.Caption = #39006#21029'|LB'
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #36234#25991'|YWSM'
        Width = 173
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #20013#25991'|ZWSM'
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
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
        Width = 111
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 36
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 209
    Top = 133
  end
  object DelMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_KCLL.*,BDepartment.DepName,TSCD_LB.YWSM,TSCD_LB.ZWSM' +
        ' '
      'from TSCD_KCLL '
      
        'left join TSCD_BDepartment BDepartment on TSCD_KCLL.DepID=BDepar' +
        'tment.ID  '
      'left join TSCD_LB on TSCD_LB.LB=TSCD_KCLL.LB'
      'where TSCD_KCLL.CFMID='#39'NO'#39' '
      
        'and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111' +
        ')) between'#39'2023/02/12'#39
      'and '#39'2023/02/15'#39
      'and TSCD_KCLL.LLNO like '#39'%'#39
      'and BDepartment.GSBH='#39'VTX'#39
      'order by TSCD_KCLL.LLNO')
    UpdateObject = UpMas
    Left = 324
    Top = 134
    object DelMasLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.TSCD_KCLL.LLNO'
      FixedChar = True
      Size = 11
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
    object DelMasYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 100
    end
    object DelMasZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
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
      DisplayFormat = 'YYYY/MM/DD'
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
      DisplayFormat = 'YYYY/MM/DD'
    end
    object DelMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCLL.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = DelMas
    Left = 356
    Top = 132
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCBB'
      'set'
      '  CFMID = :CFMID,'
      '  CFMDATE = :CFMDATE'
      'where'
      '  LLNO = :OLD_LLNO')
    DeleteSQL.Strings = (
      '')
    Left = 324
    Top = 164
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCBBS'
      'set'
      '  Qty =:Qty,'
      '  PARAMENT1 = :PARAMENT1,'
      '  VALUE1 = :VALUE1,'
      '  COLUMN1 = :COLUMN1,'
      '  PARAMENT2 = :PARAMENT2,'
      '  VALUE2 = :VALUE2,'
      '  COLUMN2 = :COLUMN2,'
      '  PARAMENT3 = :PARAMENT3,'
      '  VALUE3 = :VALUE3,'
      '  COLUMN3 = :COLUMN3,'
      '  PARAMENT4 = :PARAMENT4,'
      '  VALUE4 = :VALUE4,'
      '  COLUMN4 = :COLUMN4,'
      '  PARAMENT5 = :PARAMENT5,'
      '  VALUE5 = :VALUE5,'
      '  COLUMN5 = :COLUMN5,'
      '  PARAMENT6 = :PARAMENT6,'
      '  VALUE6 = :VALUE6,'
      '  COLUMN6 = :COLUMN6,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  TSID = :OLD_TSID')
    InsertSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    Left = 468
    Top = 165
  end
  object DelDet: TQuery
    CachedUpdates = True
    AfterOpen = DelDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select TSCD_KCBBS.LLNO,TSCD_KCBBS.TSID'
      
        ',TSCD_KCBBS.PARAMENT1,TSCD_KCBBS.PARAMENT2,TSCD_KCBBS.PARAMENT3,' +
        'TSCD_KCBBS.PARAMENT4,TSCD_KCBBS.PARAMENT5,TSCD_KCBBS.PARAMENT6'
      
        ',TSCD_KCBBS.VALUE1,TSCD_KCBBS.VALUE2,TSCD_KCBBS.VALUE3,TSCD_KCBB' +
        'S.VALUE4,TSCD_KCBBS.VALUE5,TSCD_KCBBS.VALUE6'
      
        ',TSCD_KCBBS.COLUMN1,TSCD_KCBBS.COLUMN2,TSCD_KCBBS.COLUMN3,TSCD_K' +
        'CBBS.COLUMN4,TSCD_KCBBS.COLUMN5,TSCD_KCBBS.COLUMN6'
      
        ',TSCD.SBBH,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM, IsNull(TSCD_S' +
        'B.ZWPM,CLZL.ZWPM) as ZWPM,IsNull(JDBDep.DepName,BDepartment.DepN' +
        'ame) as DepName,TSCD.DepID_Memo,TSCD_KCBBS.USERID,TSCD_KCBBS.USE' +
        'RDATE,TSCD_KCBBS.YN'
      ',TSCD_SB.QUCBH,TSCD_SB.LSBH,TSCD.NSX,TSCD.TSBH,TSCD_KCBBS.Qty'
      'from TSCD_KCBBS'
      'left join TSCD on TSCD.TSID=TSCD_KCBBS.TSID'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH'
      'left join CLZL on CLZL.cldh=TSCD.SBBH'
      
        'left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.De' +
        'pID'
      'left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS'
      'where TSCD_KCBBS.LLNO=:LLNO'
      'order by TSCD_KCBBS.LLNO'
      '')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object DelDetTSID: TStringField
      FieldName = 'TSID'
      Origin = 'DB.TSCD_KCLLS.TSID'
      FixedChar = True
      Size = 11
    end
    object DelDetPARAMENT1: TStringField
      FieldName = 'PARAMENT1'
      Origin = 'DB.TSCD_KCLLS.PARAMENT1'
      FixedChar = True
      Size = 15
    end
    object DelDetPARAMENT2: TStringField
      FieldName = 'PARAMENT2'
      Origin = 'DB.TSCD_KCLLS.PARAMENT2'
      FixedChar = True
      Size = 8
    end
    object DelDetPARAMENT3: TStringField
      FieldName = 'PARAMENT3'
      Origin = 'DB.TSCD_KCLLS.PARAMENT3'
      FixedChar = True
      Size = 8
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
      Origin = 'DB.TSCD_KCLLS.VALUE1'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE2: TStringField
      FieldName = 'VALUE2'
      Origin = 'DB.TSCD_KCLLS.VALUE2'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE3: TStringField
      FieldName = 'VALUE3'
      Origin = 'DB.TSCD_KCLLS.VALUE3'
      FixedChar = True
      Size = 50
    end
    object DelDetVALUE4: TStringField
      FieldName = 'VALUE4'
      FixedChar = True
      Size = 15
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
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.TSCD_KCLLS.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
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
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCLLS.USERID'
      FixedChar = True
      Size = 10
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCLLS.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCLLS.YN'
      FixedChar = True
      Size = 1
    end
    object DelDetQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object DS2: TDataSource
    DataSet = DelDet
    Left = 500
    Top = 132
  end
  object TSCD: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select TSCD.*'
      'from TSCD'
      'where TSID=:TSID'
      'order by TSID')
    UpdateObject = UpdateSQL1
    Left = 600
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TSID'
        ParamType = ptUnknown
      end>
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD'
      'set'
      '  DepID = :DepID,'
      '  DepID_Memo = :DepID_Memo,'
      '  JDTS = :JDTS'
      '  JDBDATE = :JDBDATE,'
      '  JDEDATE = :JDEDATE'
      '  Status = :Status,'
      '  CFMID = :CFMID,'
      '  CFMDATE = :CFMDATE,'
      '  YN = :YN'
      'where'
      '  TSID = :OLD_TSID')
    Left = 600
    Top = 165
  end
end
