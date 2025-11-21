object RTOVData: TRTOVData
  Left = 338
  Top = 417
  Width = 1305
  Height = 675
  Caption = 'RTOV Data'
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 71
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 12
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 44
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 401
      Top = 44
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 96
      Width = 320
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 82
      Top = 8
      Width = 152
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CBX2: TComboBox
      Left = 324
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX3: TComboBox
      Left = 442
      Top = 40
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button1: TButton
      Left = 525
      Top = 29
      Width = 94
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 629
      Top = 28
      Width = 94
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 83
      Top = 40
      Width = 152
      Height = 25
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object RB2: TRadioButton
      Left = 240
      Top = 12
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
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
    object BuyNoEdit: TEdit
      Left = 324
      Top = 8
      Width = 109
      Height = 25
      TabOrder = 8
    end
    object RB1: TRadioButton
      Left = 240
      Top = 44
      Width = 82
      Height = 17
      Caption = 'ETD Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 71
    Width = 1289
    Height = 565
    Align = alClient
    ColumnDefValues.AutoDropDown = True
    DataSource = DS_RTOV
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
    ImeName = 'Chinese (Traditional) - New Phonetic'
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ddbh'
        Footers = <>
        Title.Caption = #24037#21934#34399'|RY#'
      end
      item
        EditButtons = <>
        FieldName = 'khpo'
        Footers = <>
        Title.Caption = #23458#25142#35330#21934'|PO#'
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <>
        Title.Caption = #35330#21934#25976'|Pairs'
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Odate'
        Footers = <>
        Title.Caption = #20986#36008#26085'|Odate'
      end
      item
        EditButtons = <>
        FieldName = 'C'
        Footers = <>
        Title.Caption = #35009#26039'|C'
      end
      item
        EditButtons = <>
        FieldName = 'S'
        Footers = <>
        Title.Caption = #37341#36554'|S'
      end
      item
        EditButtons = <>
        FieldName = 'A'
        Footers = <>
        Title.Caption = #25104#22411'|A'
      end
      item
        EditButtons = <>
        FieldName = 'I'
        Footers = <>
        Title.Caption = #39511#36008'|I'
      end
      item
        EditButtons = <>
        FieldName = 'O'
        Footers = <>
        Title.Caption = #20986#36008'|O'
      end>
  end
  object RTOV: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ddzl.ddbh,rtstemp.khpo,ddzl.pairs'
      
        #9#9',convert(char(10),YWdd.etd,111) as ETD,max(case  when rtstemp.' +
        'gxlb='#39'O'#39' then convert(char(10),rtstemp.datadate,111) end) as '#39'Od' +
        'ate'#39
      
        #9#9',isnull(sum(case  when rtstemp.gxlb='#39'C'#39' then rtstemp.Qty  end)' +
        ',0) as '#39'C'#39
      
        #9#9',isnull(sum(case  when rtstemp.gxlb='#39'S'#39' then rtstemp.Qty  end)' +
        ',0) as '#39'S'#39
      
        #9#9',isnull(sum(case  when rtstemp.gxlb='#39'A'#39' then rtstemp.Qty  end)' +
        ',0) as '#39'A'#39
      
        #9#9',isnull(sum(case  when rtstemp.gxlb='#39'I'#39' then rtstemp.Qty  end)' +
        ',0) as '#39'I'#39
      
        #9#9',isnull(sum(case  when rtstemp.gxlb='#39'O'#39' then rtstemp.Qty  end)' +
        ',0) as '#39'O'#39
      'from  RTSTemp'
      'left join ddzl on ddzl.khpo=rtstemp.khpo'
      'left join ywdd on ywdd.ysbh=ddzl.ddbh'
      'where ddzl.BUYNO like '#39'202307%'#39
      'group by  ddzl.ddbh,rtstemp.khpo,ddzl.pairs,YWdd.etd'
      'order by ywdd.etd,ddzl.ddbh,rtstemp.khpo')
    Left = 424
    Top = 328
    object RTOVddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object RTOVkhpo: TStringField
      FieldName = 'khpo'
      FixedChar = True
    end
    object RTOVpairs: TIntegerField
      FieldName = 'pairs'
    end
    object RTOVETD: TStringField
      FieldName = 'ETD'
      FixedChar = True
      Size = 10
    end
    object RTOVOdate: TStringField
      FieldName = 'Odate'
      FixedChar = True
      Size = 10
    end
    object RTOVC: TIntegerField
      FieldName = 'C'
    end
    object RTOVS: TIntegerField
      FieldName = 'S'
    end
    object RTOVA: TIntegerField
      FieldName = 'A'
    end
    object RTOVI: TIntegerField
      FieldName = 'I'
    end
    object RTOVO: TIntegerField
      FieldName = 'O'
    end
  end
  object DDZLCC: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 304
  end
  object DS_RTOV: TDataSource
    DataSet = RTOV
    Left = 424
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 288
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
