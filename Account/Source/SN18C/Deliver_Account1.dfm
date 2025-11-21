object Deliver_Account: TDeliver_Account
  Left = 301
  Top = 292
  Width = 1515
  Height = 675
  Caption = 'Deliver_Account'
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
  object Panel1: TPanel
    Left = 0
    Top = 185
    Width = 1499
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 150
      Top = 27
      Width = 25
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 310
      Top = 26
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 527
      Top = 24
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 674
      Top = 24
      Width = 65
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 819
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 129
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 184
      Top = 24
      Width = 121
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 384
      Top = 21
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 926
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 600
      Top = 21
      Width = 66
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 745
      Top = 21
      Width = 66
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button3: TButton
      Left = 1139
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Print1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1035
      Top = 16
      Width = 97
      Height = 33
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1499
    Height = 185
    Align = alTop
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'CFMID_1'
        Footers = <>
        Title.Caption = 'MaCFMID'
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate_1'
        Footers = <>
        Title.Caption = 'MaCFMDate'
        Visible = False
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Caption = 'MaCFMID1'
        Visible = False
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE1'
        Footers = <>
        Title.Caption = 'MaCFMDATE1'
        Visible = False
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'CFMID2'
        Footers = <>
        Title.Caption = 'MaCFMID2'
        Visible = False
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE2'
        Footers = <>
        Title.Caption = 'MaCFMDATE2'
        Visible = False
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 249
    Width = 1499
    Height = 387
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 258
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Width = 50
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        ReadOnly = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'LLMemo'
        Footers = <>
        Width = 86
      end>
  end
  object Pan_SetPrint_Label: TPanel
    Left = 1007
    Top = 253
    Width = 233
    Height = 100
    TabOrder = 3
    Visible = False
    object Label9: TLabel
      Left = 21
      Top = 14
      Width = 113
      Height = 16
      Caption = 'PAPER OPTION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chk_A4: TRadioButton
      Left = 16
      Top = 36
      Width = 113
      Height = 17
      Caption = 'Only A4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object chk_A4A5: TRadioButton
      Left = 16
      Top = 56
      Width = 113
      Height = 17
      Caption = 'Auto A4,  A5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 208
      Top = 3
      Width = 25
      Height = 25
      Caption = 'X'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DLight
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Btn_Print2: TButton
      Left = 145
      Top = 41
      Width = 75
      Height = 33
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Btn_Print2Click
    end
    object chk_A5: TRadioButton
      Left = 16
      Top = 78
      Width = 71
      Height = 17
      Caption = 'Only A5'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
    end
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 364
    Top = 132
  end
  object DelMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLL.*,BDepartment.DepName,'
      
        '       KCLL_DK_CFM.CFMID,KCLL_DK_CFM.CFMDate,KCLL_DK_CFM.CFMID1,' +
        'KCLL_DK_CFM.CFMDATE1,KCLL_DK_CFM.CFMID2,KCLL_DK_CFM.CFMDATE2'
      'from KCLL'
      'left join BDepartment on KCLL.DepID=BDepartment.ID'
      'left join KCLL_DK_CFM on KCLL_DK_CFM.LLNO=KCLL.LLNO'
      'where KCLL.CFMID='#39'NO'#39' and 1=2'
      'order by KCLL.LLNO')
    UpdateObject = UpMas
    Left = 330
    Top = 132
    object DelMasLLNO: TStringField
      DisplayWidth = 13
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object DelMasSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      Origin = 'DB.KCLL.SCBH'
      FixedChar = True
      Size = 15
    end
    object DelMasDepID: TStringField
      DisplayWidth = 12
      FieldName = 'DepID'
      Origin = 'DB.KCLL.DepID'
      FixedChar = True
      Size = 10
    end
    object DelMasDepName: TStringField
      DisplayWidth = 20
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object DelMasUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      Origin = 'DB.KCLL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      Origin = 'DB.KCLL.USERID'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDate: TDateTimeField
      DisplayWidth = 13
      FieldName = 'CFMDate'
      Origin = 'DB.KCLL.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelMasCFMID: TStringField
      DisplayWidth = 18
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object DelMasYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      Origin = 'DB.KCLL.YN'
      FixedChar = True
      Size = 1
    end
    object DelMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.KCLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object DelMasCKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCLL.CKBH'
      FixedChar = True
      Size = 4
    end
    object DelMasCFMID_1: TStringField
      FieldName = 'CFMID_1'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDate_1: TDateTimeField
      FieldName = 'CFMDate_1'
    end
    object DelMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
    end
    object DelMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object DelMasCFMDATE2: TDateTimeField
      FieldName = 'CFMDATE2'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLL'
      'set'
      '  LLNO = :LLNO,'
      '  GSBH = :GSBH,'
      '  CKBH = :CKBH,'
      '  SCBH = :SCBH,'
      '  DepID = :DepID,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID,'
      '  YN = :YN'
      'where'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'insert into KCLL'
      
        '  (LLNO, GSBH, CKBH, SCBH, DepID, USERDATE, USERID, CFMDate, CFM' +
        'ID, YN)'
      'values'
      
        '  (:LLNO, :GSBH, :CKBH, :SCBH, :DepID, :USERDATE, :USERID, :CFMD' +
        'ate, '
      ':CFMID, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from KCLL'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 329
    Top = 160
  end
  object DelDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select KCLLS.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,DDZL.YN as DDYN'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join (select * from  KCZLS  where   KCZLS.CKBH=:CKBH) KCZLS' +
        ' on KCZLS.CLBH=KCLLS.CLBH'
      'left join DDZL on DDZL.ZLBH=KCLLS.SCBH'
      'where KCLLS.LLNO=:LLNO'
      'order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH')
    UpdateObject = UPDet
    Left = 470
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CKBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object DelDetLLNO: TStringField
      DisplayWidth = 13
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetCLBH: TStringField
      DisplayWidth = 18
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DelDetYWPM: TStringField
      DisplayWidth = 87
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetTempQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'TempQty'
      DisplayFormat = '#,##0.00'
    end
    object DelDetQty: TCurrencyField
      DisplayWidth = 12
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object DelDetUSPrice: TCurrencyField
      DisplayWidth = 12
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object DelDetCostID: TStringField
      DisplayWidth = 12
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object DelDetSCBH: TStringField
      DisplayWidth = 18
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DelDetUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetDFL: TStringField
      DisplayWidth = 4
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object DelDetDDYN: TStringField
      FieldName = 'DDYN'
      FixedChar = True
      Size = 1
    end
    object DelDetHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object DelDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetLLMemo: TStringField
      FieldName = 'LLMemo'
      FixedChar = True
      Size = 200
    end
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 504
    Top = 131
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  CNO = :CNO'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (Qty)'
      'values'
      '  (:Qty)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 471
    Top = 163
  end
  object PopupMenu1: TPopupMenu
    Left = 297
    Top = 133
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 576
    Top = 128
  end
end
