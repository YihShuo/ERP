object TPToFinished: TTPToFinished
  Left = 192
  Top = 125
  Width = 1266
  Height = 675
  Caption = 'TPToFinished'
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
  object Panel14: TPanel
    Left = 0
    Top = 0
    Width = 1258
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label65: TLabel
      Left = 8
      Top = 27
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 176
      Top = 27
      Width = 26
      Height = 16
      Caption = 'SR#'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 352
      Top = 27
      Width = 64
      Height = 16
      Caption = 'Dev Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 562
      Top = 27
      Width = 60
      Height = 16
      Caption = 'Dev Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DevCode_Edit: TEdit
      Left = 224
      Top = 24
      Width = 121
      Height = 24
      Color = clYellow
      TabOrder = 0
    end
    object Query: TButton
      Left = 977
      Top = 24
      Width = 75
      Height = 25
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
    object Excel: TButton
      Left = 1065
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = ExcelClick
    end
    object JiJie_Combobox: TComboBox
      Left = 75
      Top = 24
      Width = 97
      Height = 24
      Color = clYellow
      ItemHeight = 16
      TabOrder = 3
    end
    object KFJD_Combobox: TComboBox
      Left = 437
      Top = 24
      Width = 120
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        ''
        'PRO'
        'SM2'
        'SM3'
        'SM4'
        'PDT'
        'CFM'
        'ADD'
        'AD1'
        'PUL'
        'AD2'
        'AD3'
        'AD4'
        'AD5'
        'AD6')
    end
    object Subtype_Combobox: TComboBox
      Left = 641
      Top = 24
      Width = 157
      Height = 24
      ItemHeight = 16
      TabOrder = 5
      Items.Strings = (
        ''
        'Inline'
        'Great@Good'
        'QuickResponse'
        'Incubate'
        'SMU'
        'Innovation ')
    end
    object LAIV: TRadioButton
      Left = 817
      Top = 15
      Width = 70
      Height = 17
      Caption = 'LAIV'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object BYIV: TRadioButton
      Left = 816
      Top = 40
      Width = 70
      Height = 17
      Caption = 'BYIV'
      TabOrder = 7
    end
    object LAIK: TRadioButton
      Left = 896
      Top = 16
      Width = 70
      Height = 17
      Caption = 'LAIK'
      TabOrder = 8
    end
    object BYIK: TRadioButton
      Left = 896
      Top = 40
      Width = 70
      Height = 17
      Caption = 'BYIK'
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1258
    Height = 579
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xlsx)|*.xlsx|CSV(comma split)(*.csv)|*.csv|Web Page' +
      '(*.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 1151
    Top = 3
  end
  object DataSource1: TDataSource
    DataSet = YPZL_Qry
    Left = 1216
    Top = 35
  end
  object YPZL_Qry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select top 10  kfxxzl.JiJie as '#39'Season'#39',kfxxzl.DEVCODE as '#39'SR#'#39',' +
        'YPZL.KFJD '#39'Dev Stage'#39',YPZL.Subtype as '#39'Dev Type'#39' '
      
        ',YPZL.YPDH as '#39'Shipment'#39',R3Sample.TPdate as '#39'TP Date'#39',BModRec_De' +
        'v.DelDate as '#39'BOM Date'#39',recheckdate as '#39'Develop Date'#39' '
      
        ',recieveDate as '#39'Purchase Date'#39',max(Kcrks.USERDATE) AS '#39'MTRL In ' +
        'Coming Date'#39',SHOETEST.preparationDate as '#39'Warehouse Scan Date'#39' '
      '  FROM YPZL YPZL '
      
        'Left Join kfxxzl kfxxzl ON YPZL.XieXing = kfxxzl.XieXing AND YPZ' +
        'L.SheHao = kfxxzl.SheHao '
      
        'Left Join xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.S' +
        'heHao = kfxxzl.SheHao '
      'Left Join BUsers ON BUsers.UserID=YPZL.UserID '
      
        'Left Join  R3Sample on R3Sample.xiexing=kfxxzl.xiexing and R3Sam' +
        'ple.shehao=kfxxzl.shehao '
      'Left Join SHOETEST ON YPZL.YPDH=SHOETEST.YPDH '
      'LEFT JOIN KCRKS ON YPZL.YPDH=KCRKS.CGBH '
      
        'Left Join (select a.TNO,a.DelDate,b.recieveDate,b.recheckdate fr' +
        'om (select min(DelDate) as DelDate,TNO from BModRec_Dev where ar' +
        'ticle='#39'FD_check'#39' group by TNO)a '
      
        'Left Join (select recheckdate,TNO,DelDate,recieveDate from BModR' +
        'ec_Dev where article='#39'FD_check'#39')b on b.TNO=a.TNO and a.DelDate=b' +
        '.DelDate group by a.TNO,a.DelDate,b.recieveDate,b.recheckdate '
      ')BModRec_Dev on TNO=YPZL.YPDH '
      'where YPZL.GSDH='#39'CDC'#39
      
        'group by kfxxzl.JiJie,kfxxzl.DEVCODE,YPZL.KFJD,YPZL.Subtype,YPZL' +
        '.YPDH,R3Sample.TPdate,BModRec_Dev.DelDate,recheckdate,recieveDat' +
        'e,SHOETEST.preparationDate '
      'order by YPZL.YPDH desc  '
      ''
      '')
    Left = 1216
    Top = 3
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 1184
    Top = 3
  end
end
