object DeliveryMatBarcode: TDeliveryMatBarcode
  Left = 215
  Top = 111
  Width = 1091
  Height = 544
  Caption = 'DeliveryMatBarcode'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 210
    Width = 1075
    Height = 7
    Cursor = crVSplit
    Align = alTop
    Color = clMedGray
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 72
    Align = alTop
    BevelOuter = bvLowered
    Color = 14737600
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label5: TLabel
      Left = 10
      Top = 2
      Width = 199
      Height = 24
      AutoSize = False
      Caption = 'PHIEU XUAT VAT TU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LLBarCodeEdit: TEdit
      Left = 9
      Top = 21
      Width = 280
      Height = 47
      AutoSize = False
      BevelOuter = bvRaised
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -40
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = LLBarCodeEditKeyPress
    end
    object KCLLCanelBtn: TBitBtn
      Left = 299
      Top = 19
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Clear'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = KCLLCanelBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 72
    Width = 1075
    Height = 138
    Align = alTop
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1073
      Height = 136
      Align = alClient
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
        end>
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 217
    Width = 1075
    Height = 289
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
    TabOrder = 2
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
  object DelDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.TempQty,' +
        'KCLLS.Qty,KCLLS.BLSB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,'
      '         DDZL.YN as DDYN,SCBLYY.YWSM,'
      
        '         KCLL.GSBH,KCLL.DepID,BDepartment.DepName,KCLL.CKBH,KCLL' +
        '.USERID,KCLL.USERDATE,KCLL.CFMID,KCLL.CFMDate,0 as Flowindex    '
      'from KCLLS'
      'inner join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'inner join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join BDepartment on KCLL.DepID=BDepartment.ID  '
      'left join DDZL on DDZL.DDBH=KCLLS.SCBH '
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'where KCLLS.LLNO='#39'20171000400'#39'  and KCLL.GSBH='#39'VA12'#39' and KCLL.CF' +
        'MID='#39'NO'#39' and 1=2 '
      'order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH'
      '')
    UpdateObject = UPDet
    Left = 380
    Top = 316
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
    object DelDetQty: TCurrencyField
      FieldName = 'Qty'
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
    object DelDetFlowIndex: TIntegerField
      FieldName = 'FlowIndex'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  Qty = :Qty,'
      '  BLSB = :BLSB'
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
    Left = 380
    Top = 349
  end
  object DS1: TDataSource
    DataSet = DelDet
    Left = 420
    Top = 316
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 346
    Top = 316
  end
  object MatQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLLS.*,CLZL.ywpm,isnull(KCZLS.KCQty,0) as KCQty from ('
      'select KCLL.CKBH,KCLLS.CLBH,Sum(KCLLS.TempQty) as TempQty'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'where KCLLS.LLNO in (:LLNO)'
      'Group by KCLL.CKBH,KCLLS.CLBH ) KCLLS'
      'inner join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        'left join KCZLS  KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=K' +
        'CLLS.CKBH')
    Left = 380
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
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
  end
  object DS2: TDataSource
    DataSet = MatQuery
    Left = 412
    Top = 156
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 346
    Top = 348
  end
end
