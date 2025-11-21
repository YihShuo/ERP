object OrderCalculateSpecialBOM: TOrderCalculateSpecialBOM
  Left = 1011
  Top = 352
  Width = 1109
  Height = 480
  Caption = 'Order Calculate Special BOM'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 64
    Width = 888
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16769505
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footer.FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'SpecNo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Article Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pairs'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'DD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = 'XX'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Dest'
        Footers = <>
        Title.Caption = 'Dest ID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Destination'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 225
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH_VNBOM'
        Footers = <>
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 100
      end>
  end
  object Panel2: TPanel
    Left = 888
    Top = 64
    Width = 205
    Height = 377
    Align = alRight
    TabOrder = 1
    object DBGrid3: TDBGridEh
      Left = 14
      Top = 1
      Width = 190
      Height = 375
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDCC'
          Footers = <
            item
              FieldName = 'XXCC'
              ValueType = fvtCount
            end>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'XXCC'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 64
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 6
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 368
      Top = 6
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 176
      Top = 6
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 737
      Top = 5
      Width = 17
      Height = 16
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 848
      Top = 24
      Width = 4
      Height = 18
    end
    object Label7: TLabel
      Left = 0
      Top = 33
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DestNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 198
      Top = 33
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Destination:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 79
      Top = 5
      Width = 106
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 886
      Top = 25
      Width = 73
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 255
      Top = 2
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 454
      Top = 2
      Width = 73
      Height = 26
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 624
      Top = 3
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 764
      Top = 2
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 5
    end
    object BuyNoEdit: TEdit
      Left = 623
      Top = 30
      Width = 101
      Height = 26
      TabOrder = 6
    end
    object RB1: TRadioButton
      Left = 539
      Top = 8
      Width = 78
      Height = 17
      Caption = 'CSD:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 539
      Top = 32
      Width = 78
      Height = 17
      Caption = 'BuyNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BBTCa: TButton
      Left = 990
      Top = 25
      Width = 73
      Height = 33
      Caption = 'Calculate'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BBTCaClick
    end
    object Edit5: TEdit
      Left = 287
      Top = 32
      Width = 154
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 79
      Top = 32
      Width = 106
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 272
    Top = 272
  end
  object SpecMas: TQuery
    AfterOpen = SpecMasAfterOpen
    AfterScroll = SpecMasAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct zlzl.ZLBH, zlzl.DDBH, DDZL.Pairs as Qty, DDZL.Xi' +
        'eXing, DDZL.SheHao, DDZL.Article, '
      
        'DDZL.ShipDate, XXZL.CCGB as XXCC, XXZL.XieMing, DDZL.DDZT, DDZL.' +
        'CCGB as DDCC, KFZL.KFJC, '
      
        'XXZLSSVN.cond, LBZLS.YWSM as Destination, ZLZLS2.ZLBH as ZLBH_VN' +
        'BOM '
      'from zlzl '
      'left join DDZL on zlzl.ZLBH=DDZL.DDBH'
      
        'left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      
        'left join XXZLS on XXZLS.XieXing=DDZL.XieXing and XXZLS.SheHao=D' +
        'DZL.SheHao '
      'left join kfzl on KFZl.KFDH=DDZL.KHBH '
      
        'left join (select distinct XieXing,SheHao,bwbh,CLBH,CSBH,clsl,co' +
        'nd from XXZLSSVN) XXZLSSVN '
      
        '           on (XXZLSSVN.XieXing=DDZL.XieXing and XXZLSSVN.SheHao' +
        '=DDZL.SheHao'
      #9#9'    and XXZLSSVN.cond=DDZL.Dest)'
      #9#9#9'or(xxzlssvn.XieXing='#39'ZZZZZZZZZ'#39' AND xxzlssvn.SheHao='#39'ZZZ'#39' '
      #9#9#9'and xxzlssvn.bwbh=xxzls.bwbh and xxzlssvn.CLBH=xxzls.clbh'
      
        ' and xxzlssvn.CSBH=xxzls.CSBH and xxzlssvn.clsl=xxzls.clsl and X' +
        'XZLSSVN.cond=DDZL.Dest)'
      'left join LBZLS on LBZLS.LBDH=XXZLSSVN.cond and LBZLS.LB='#39'13'#39
      
        'left join (select distinct ZLBH from ZLZLS2 where (xh ='#39'VN'#39') and' +
        ' (left(CLBH,1) = '#39'H'#39' or left(CLBH,1) = '#39'L'#39')) ZLZLS2 '
      '           on ZLZLS2.ZLBH=zlzl.ZLBH'
      'where 1=1 '
      '      and DDZL.GSBH = '#39'VA12'#39' '
      
        '      and isnull(XXZLSSVN.XieXing,'#39#39')<>'#39#39' and isnull(DDZL.Dest,'#39 +
        #39')<>'#39#39' '
      'order by zlzl.ZLBH'
      '')
    Left = 248
    Top = 272
    object SpecMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SpecMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasZLBH_VNBOM: TStringField
      FieldName = 'ZLBH_VNBOM'
      FixedChar = True
      Size = 15
    end
    object SpecMascond: TStringField
      FieldName = 'cond'
    end
    object SpecMasDestination: TStringField
      FieldName = 'Destination'
    end
    object SpecMasDest: TStringField
      FieldName = 'Dest'
    end
  end
  object OrdSize: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select DDZLs.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as XXCC,'
      '         DDZLs.Quantity  as Qty'
      'from DDZLs '
      
        'left join XXZLS3  on  XXZLS3.XieXing='#39'103720(VN)'#39' and DDZLS.CC=X' +
        'XZLS3.US_Size'
      'where DDZLs.DDBH='#39'VN-292A'#39
      'and DDZLs.Quantity<>0  ')
    Left = 776
    Top = 345
    object OrdSizeDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.DDZLs.DDBH'
      FixedChar = True
      Size = 15
    end
    object OrdSizeDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdSizeXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdSizeQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.DDZLs.Quantity'
      DisplayFormat = '##,#0'
    end
  end
  object DS3: TDataSource
    DataSet = OrdSize
    Left = 800
    Top = 345
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 272
    Top = 144
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 248
    Top = 144
  end
  object Calculate: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct zlzl.zlbh, xxzlssvn.XieXing, xxzlssvn.SheHao'
      'from xxzlssvn'
      
        'left join DDZL on  ddzl.XieXing=xxzlssvn.XieXing and ddzl.SheHao' +
        '=xxzlssvn.SheHao and ddzl.Dest=xxzlssvn.cond'
      'left join ZLZL on ZLZL.ZLBH=DDZL.DDBH'
      'left join CLZL on CLZL.CLDH=xxzlssvn.CLBH'
      'where xxzlssvn.XieXing=:XieXing and xxzlssvn.SheHao=:SheHao')
    Left = 480
    Top = 200
  end
end
