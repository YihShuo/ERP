object QCCheckinbox: TQCCheckinbox
  Left = 465
  Top = 178
  Width = 1305
  Height = 675
  Caption = 'QC Check In Box'
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 767
      Top = 21
      Width = 298
      Height = 29
      AutoSize = False
      Caption = 'QC Scan Check In Box'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 368
      Top = 16
      Width = 70
      Height = 18
      Caption = 'Don Hang'
    end
    object Label3: TLabel
      Left = 408
      Top = 48
      Width = 22
      Height = 18
      Caption = 'XH'
    end
    object Panel1: TPanel
      Left = 16
      Top = 8
      Width = 345
      Height = 57
      Caption = 'Panel1'
      TabOrder = 0
      object Edit1: TEdit
        Left = 8
        Top = 8
        Width = 329
        Height = 45
        AutoSize = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
    end
    object Button1: TButton
      Left = 648
      Top = 8
      Width = 97
      Height = 49
      Caption = 'Clear'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 448
      Top = 8
      Width = 177
      Height = 26
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 448
      Top = 40
      Width = 121
      Height = 26
      TabOrder = 3
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 72
    Width = 1289
    Height = 564
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'InboxBar'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'POSqty'
        Footers = <>
      end>
  end
  object ScanData: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#YWBZPOS'#39') is not null'
      ' begin drop table #YWBZPOS end'
      
        ' select distinct YWBZPOS.DDBH,YWBZPOS.DDCC,YWCPLH.InboxBar, 0 as' +
        ' Qty, YWBZPOS.Qty as POSqty   into #YWBZPOS'
      ' from YWBZPOS'
      ' left join YWDD on YWBZPOS.DDBH=YWDD.DDBH'
      ' left join DDZl on DDZl.DDBH=YWDD.YSBH'
      
        ' left join ZLZLS on ZLZLS.ZLCC=YWBZPOS.DDCC and DDZL.ZLBH=ZLZLS.' +
        'ZLBH'
      ' left join YWCPLH on YWCPLH.XXCC=ZLZLS.XXCC'
      ' and YWCPLH.XieXing=DDZL.XieXing and YWCPLH.SheHao=DDZL.SheHao'
      ' left join ywcp on YWCP.DDBH=ddzl.DDBH and YWCP.XH=YWBZPOS.XH'
      ' where YWBZPOS.DDBH ='#39'JTS2409-001'#39
      ' and YWBZPOS.XH='#39'035'#39' and 1=2'
      ' select * from #YWBZPOS')
    Left = 200
    Top = 184
    object ScanDataDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object ScanDataDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 6
    end
    object ScanDataInboxBar: TStringField
      FieldName = 'InboxBar'
      FixedChar = True
      Size = 50
    end
    object ScanDataQty: TIntegerField
      FieldName = 'Qty'
    end
    object ScanDataPOSqty: TIntegerField
      FieldName = 'POSqty'
    end
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 200
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 336
  end
end
