object DeloverPre: TDeloverPre
  Left = 214
  Top = 116
  Width = 1081
  Height = 536
  Caption = 'DeloverPre'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1065
    Height = 193
    Align = alTop
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 32
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1065
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 123
      Top = 17
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 257
      Top = 18
      Width = 43
      Height = 16
      Caption = 'LLNO:'
    end
    object Label3: TLabel
      Left = 432
      Top = 18
      Width = 46
      Height = 16
      Caption = 'SCBH:'
    end
    object Label4: TLabel
      Left = 590
      Top = 18
      Width = 45
      Height = 16
      Caption = 'HGLB:'
    end
    object Button1: TButton
      Left = 805
      Top = 8
      Width = 83
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
    object DTP1: TDateTimePicker
      Left = 16
      Top = 13
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 146
      Top = 14
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 303
      Top = 14
      Width = 119
      Height = 24
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 696
      Top = 17
      Width = 96
      Height = 17
      Caption = 'NoConfirm'
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 477
      Top = 14
      Width = 107
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 637
      Top = 14
      Width = 57
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 6
      Items.Strings = (
        ''
        'NK'
        'TC'
        'HD'
        'KD'
        'GC'
        'XT')
    end
    object Button2: TButton
      Left = 895
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Print'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 242
    Width = 1065
    Height = 255
    Align = alClient
    DataSource = DS4
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 341
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <
          item
            FieldName = 'DWBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 42
      end
      item
        Color = 12910591
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        ReadOnly = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        ReadOnly = True
        Width = 30
      end
      item
        Color = 12320767
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 52
      end>
  end
  object DelMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLL.*,BDepartment.DepName'
      'from KCLL'
      'left join BDepartment on KCLL.DepID=BDepartment.ID'
      'where KCLL.CFMID='#39'NO'#39
      'order by KCLL.LLNO')
    Left = 324
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
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 356
    Top = 132
  end
  object DelDet: TQuery
    AfterOpen = DelDetAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select KCLLS.*,CLZL.YWPM,CLZL.DWBH'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'where KCLLS.LLNO=:LLNO'
      'order by KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH')
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
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
    object DelDetDFL: TStringField
      DisplayWidth = 4
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object DelDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DelDetTempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.0'
    end
    object DelDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object DelDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object DelDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object DelDetVNACC: TCurrencyField
      FieldName = 'VNACC'
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
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 500
    Top = 132
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 88
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object qryCGNO: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'select case when CGNO<>'#39#39' then '#39'PO:'#39'+CGNO else CGNO end CGNO fro' +
        'm  ('
      'select cast((select CGZLSS.CGNO + '#39', '#39'   from CGZLSS'
      #9#9'inner join CGZL on CGZLSS.CGNO=CGZL.CGNO'
      #9#9'left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH'
      #9#9'where ZSZL.DYBH=:GSBH and ZLBH=:SCBH  and CLBH  =:CLBH'
      
        #9#9'group by CGZLSS.CGNO for XML Path ('#39#39'))as varchar(500))[CGNO] ' +
        ') CGZLSS'
      '')
    Left = 576
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object qryCGNOCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 255
    end
  end
end
